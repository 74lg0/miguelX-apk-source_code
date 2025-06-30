.class public Lcom/utils/GameControllerInput;
.super Ljava/lang/Object;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/utils/GameControllerInput$KeyMapInfo;
    }
.end annotation


# static fields
.field public static final CONTROLLER_ID_PS3:I = 0x2

.field public static final CONTROLLER_ID_UNKNOWN:I = 0x0

.field public static final CONTROLLER_ID_XPERIA:I = 0x1

.field public static final DEFAULT_CONTROL_SET:I = 0x0

.field public static final GAMEPAD_BUTTON_1:I = 0x3e8

.field public static final GAMEPAD_BUTTON_2:I = 0x3e9

.field public static final GAMEPAD_BUTTON_BACK:I = 0x3ea

.field public static final GAMEPAD_BUTTON_OK:I = 0x3eb

.field public static final KEYPAD_PS3_CONTROLLER:Ljava/lang/String; = "PLAYSTATION(R)3"

.field public static final KEYPAD_XPERIA:Ljava/lang/String; = "keypad-zeus"

.field public static final MENU_BACK_SCAN_CODE:I = 0x9e

.field private static _instance:Lcom/utils/GameControllerInput;


# instance fields
.field private actDeviceState:Lcom/utils/InputDeviceState;

.field public activity:Landroid/app/Activity;

.field private keyCodesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/utils/GameControllerInput$KeyMapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/utils/GameControllerInput;->activity:Landroid/app/Activity;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/utils/GameControllerInput;->keyCodesMap:Ljava/util/HashMap;

    .line 37
    iput-object v0, p0, Lcom/utils/GameControllerInput;->actDeviceState:Lcom/utils/InputDeviceState;

    return-void
.end method

.method private canMappingToGamePad(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 151
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->xperiaIsKeypadOpen()Z

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    const/16 v0, 0x9e

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private findKeyCode(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "key"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/utils/GameControllerInput;->keyCodesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/utils/GameControllerInput;->keyCodesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/utils/GameControllerInput$KeyMapInfo;

    check-cast p1, [Lcom/utils/GameControllerInput$KeyMapInfo;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 204
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 205
    aget-object v1, p1, v0

    iget v1, v1, Lcom/utils/GameControllerInput$KeyMapInfo;->key:I

    if-ne v1, p2, :cond_0

    .line 207
    aget-object p1, p1, v0

    iget p1, p1, Lcom/utils/GameControllerInput$KeyMapInfo;->code:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static getActiveControllerSet()I
    .locals 1

    .line 119
    invoke-static {}, Lcom/utils/GameControllerInput;->getControllerID()I

    move-result v0

    invoke-static {v0}, Lcom/utils/GameControllerInput;->getControllerSet(I)I

    move-result v0

    return v0
.end method

.method public static getControllerID()I
    .locals 4

    .line 95
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->xperiaIsKeypadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    return v2

    .line 101
    :cond_1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 103
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 105
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 108
    invoke-static {}, Lcom/utils/GameControllerInput;->getInstance()Lcom/utils/GameControllerInput;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/utils/GameControllerInput;->getControllerType(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static getControllerSet(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private getInputDeviceState(Landroid/view/InputEvent;)Lcom/utils/InputDeviceState;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return-object v1

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 255
    :cond_1
    new-instance v0, Lcom/utils/InputDeviceState;

    invoke-direct {v0, p1}, Lcom/utils/InputDeviceState;-><init>(Landroid/view/InputDevice;)V

    return-object v0
.end method

.method public static getInstance()Lcom/utils/GameControllerInput;
    .locals 1

    .line 43
    sget-object v0, Lcom/utils/GameControllerInput;->_instance:Lcom/utils/GameControllerInput;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/utils/GameControllerInput;

    invoke-direct {v0}, Lcom/utils/GameControllerInput;-><init>()V

    sput-object v0, Lcom/utils/GameControllerInput;->_instance:Lcom/utils/GameControllerInput;

    .line 46
    invoke-virtual {v0}, Lcom/utils/GameControllerInput;->initKeyCodeMap()V

    .line 49
    :cond_0
    sget-object v0, Lcom/utils/GameControllerInput;->_instance:Lcom/utils/GameControllerInput;

    return-object v0
.end method

.method private processJoystickInput(Landroid/view/InputDevice;Landroid/view/MotionEvent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "event",
            "historyPos"
        }
    .end annotation

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p1, v1, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ltz p3, :cond_1

    .line 298
    invoke-virtual {p2, v1, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 302
    :goto_0
    invoke-static {v0, v1}, Lcom/utils/InputDeviceState;->ProcessAxis(Landroid/view/InputDevice$MotionRange;F)F

    .line 306
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    if-eqz p1, :cond_4

    if-ltz p3, :cond_3

    .line 310
    invoke-virtual {p2, v1, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result p2

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    .line 314
    :goto_1
    invoke-static {p1, p2}, Lcom/utils/InputDeviceState;->ProcessAxis(Landroid/view/InputDevice$MotionRange;F)F

    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/utils/GameControllerInput;->getInputDeviceState(Landroid/view/InputEvent;)Lcom/utils/InputDeviceState;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 270
    :cond_1
    invoke-virtual {v0, p1}, Lcom/utils/InputDeviceState;->onJoystickMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-direct {p0, v3, p1, v2}, Lcom/utils/GameControllerInput;->processJoystickInput(Landroid/view/InputDevice;Landroid/view/MotionEvent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/utils/GameControllerInput;->processJoystickInput(Landroid/view/InputDevice;Landroid/view/MotionEvent;I)V

    :cond_3
    :goto_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1}, Lcom/utils/GameControllerInput;->getInputDeviceState(Landroid/view/InputEvent;)Lcom/utils/InputDeviceState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0, p1}, Lcom/utils/InputDeviceState;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 227
    :cond_2
    invoke-virtual {v0, p1}, Lcom/utils/InputDeviceState;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_3
    :goto_0
    return v2
.end method

.method public getControllerType(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keypad-zeus"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->xperiaIsKeypadOpen()Z

    move-result p1

    return p1

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PLAYSTATION(R)3"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getKeyCode(Landroid/view/KeyEvent;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/utils/GameControllerInput;->getInputDeviceState(Landroid/view/InputEvent;)Lcom/utils/InputDeviceState;

    move-result-object v0

    iput-object v0, p0, Lcom/utils/GameControllerInput;->actDeviceState:Lcom/utils/InputDeviceState;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 160
    invoke-direct {p0, p1}, Lcom/utils/GameControllerInput;->canMappingToGamePad(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/utils/GameControllerInput;->actDeviceState:Lcom/utils/InputDeviceState;

    invoke-virtual {v0}, Lcom/utils/InputDeviceState;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 173
    invoke-virtual {p0, v0}, Lcom/utils/GameControllerInput;->getControllerType(Ljava/lang/String;)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/utils/GameControllerInput;->actDeviceState:Lcom/utils/InputDeviceState;

    invoke-virtual {v1, v0}, Lcom/utils/InputDeviceState;->setControllerID(I)V

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "PLAYSTATION(R)3"

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/utils/GameControllerInput;->findKeyCode(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->xperiaIsKeypadOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "keypad-zeus"

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/utils/GameControllerInput;->findKeyCode(Ljava/lang/String;I)I

    move-result p1

    :cond_4
    :goto_0
    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const-string v0, "game"

    const-string v1, "GameControllerInput is inited"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/utils/GameControllerInput;->activity:Landroid/app/Activity;

    return-void
.end method

.method public initKeyCodeMap()V
    .locals 15

    .line 61
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->xperiaIsXOkeysSwapped()Z

    move-result v0

    const/16 v1, 0x3ea

    const/16 v2, 0x3eb

    if-eqz v0, :cond_0

    const/16 v0, 0x3ea

    const/16 v3, 0x3eb

    goto :goto_0

    :cond_0
    const/16 v0, 0x3eb

    const/16 v3, 0x3ea

    .line 69
    :goto_0
    iget-object v4, p0, Lcom/utils/GameControllerInput;->keyCodesMap:Ljava/util/HashMap;

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/utils/GameControllerInput$KeyMapInfo;

    new-instance v7, Lcom/utils/GameControllerInput$KeyMapInfo;

    const/16 v8, 0x63

    const/16 v9, 0x3e8

    invoke-direct {v7, p0, v8, v9}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    new-instance v7, Lcom/utils/GameControllerInput$KeyMapInfo;

    const/16 v11, 0x64

    const/16 v12, 0x3e9

    invoke-direct {v7, p0, v11, v12}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    const/4 v13, 0x1

    aput-object v7, v6, v13

    new-instance v7, Lcom/utils/GameControllerInput$KeyMapInfo;

    const/16 v14, 0x17

    invoke-direct {v7, p0, v14, v0}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    const/4 v0, 0x2

    aput-object v7, v6, v0

    new-instance v7, Lcom/utils/GameControllerInput$KeyMapInfo;

    invoke-direct {v7, p0, v5, v3}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    const/4 v3, 0x3

    aput-object v7, v6, v3

    const-string v7, "keypad-zeus"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v4, p0, Lcom/utils/GameControllerInput;->keyCodesMap:Ljava/util/HashMap;

    new-array v5, v5, [Lcom/utils/GameControllerInput$KeyMapInfo;

    new-instance v6, Lcom/utils/GameControllerInput$KeyMapInfo;

    const/16 v7, 0x60

    invoke-direct {v6, p0, v7, v9}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    aput-object v6, v5, v10

    new-instance v6, Lcom/utils/GameControllerInput$KeyMapInfo;

    const/16 v7, 0x61

    invoke-direct {v6, p0, v7, v12}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    aput-object v6, v5, v13

    new-instance v6, Lcom/utils/GameControllerInput$KeyMapInfo;

    invoke-direct {v6, p0, v8, v2}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    aput-object v6, v5, v0

    new-instance v0, Lcom/utils/GameControllerInput$KeyMapInfo;

    invoke-direct {v0, p0, v11, v1}, Lcom/utils/GameControllerInput$KeyMapInfo;-><init>(Lcom/utils/GameControllerInput;II)V

    aput-object v0, v5, v3

    const-string v0, "PLAYSTATION(R)3"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/utils/GameControllerInput;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
