.class public Lcom/utils/InputDeviceState;
.super Ljava/lang/Object;
.source "InputDeviceState.java"


# instance fields
.field private mAxes:[I

.field private mAxisValues:[F

.field private mControllerId:I

.field private mDevice:Landroid/view/InputDevice;

.field private mKeys:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/utils/InputDeviceState;->mDevice:Landroid/view/InputDevice;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 52
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 58
    :cond_2
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/utils/InputDeviceState;->mAxes:[I

    .line 59
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/utils/InputDeviceState;->mAxisValues:[F

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/utils/InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 65
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice$MotionRange;

    .line 66
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/utils/InputDeviceState;->mAxes:[I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v0

    aput v0, v1, v2

    move v2, v3

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static ProcessAxis(Landroid/view/InputDevice$MotionRange;F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "range",
            "axisvalue"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return v2

    :cond_0
    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result p0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result p0

    :goto_0
    div-float/2addr v0, p0

    return v0
.end method

.method private static isGameKey(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x52

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 136
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result p0

    return p0

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/utils/InputDeviceState;->isGamePadButton(I)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isGamePadButton(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/16 v0, 0xbc

    if-lt p0, v0, :cond_0

    const/16 v0, 0xcb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getControllerID()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/utils/InputDeviceState;->mControllerId:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/utils/InputDeviceState;->mDevice:Landroid/view/InputDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public onJoystickMotion(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/utils/InputDeviceState;->mAxes:[I

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 96
    aget p1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-static {v0}, Lcom/utils/InputDeviceState;->isGameKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/utils/InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 157
    invoke-static {p1}, Lcom/utils/InputDeviceState;->isGameKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/utils/InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public setControllerID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/utils/InputDeviceState;->mControllerId:I

    return-void
.end method
