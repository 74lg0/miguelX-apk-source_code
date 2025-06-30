.class public Lcom/mojang/minecraftpe/input/InputCharacteristics;
.super Ljava/lang/Object;
.source "InputCharacteristics.java"


# static fields
.field private static final DUALSENSE_DEVICE_ID:I = 0xce6

.field private static final SONY_VENDOR_ID:I = 0x54c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allControllersHaveDoubleTriggers()Z
    .locals 9

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_6

    aget v4, v0, v2

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/lit16 v5, v5, 0x401

    if-eqz v5, :cond_5

    const/16 v3, 0x68

    const/16 v5, 0x69

    const/16 v6, 0x66

    const/16 v7, 0x67

    filled-new-array {v6, v7, v3, v5}, [I

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    move v6, v1

    :goto_2
    array-length v8, v3

    if-ge v6, v8, :cond_2

    aget-boolean v8, v3, v6

    if-nez v8, :cond_1

    move v5, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-nez v5, :cond_3

    aget-boolean v6, v3, v1

    if-eqz v6, :cond_3

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_3

    invoke-static {v4}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(Landroid/view/InputDevice;)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EI-GP20"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    return v3
.end method

.method public static isCreteController(I)Z
    .locals 5

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getControllerNumber()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x45e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v2, 0x2e0

    if-ne p0, v2, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    const-string p0, "/system/usr/keylayout/Vendor_045e_Product_02e0.kl"

    const-string v1, "/data/system/devices/keylayout/Vendor_045e_Product_02e0.kl"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public static isDualsenseController(I)Z
    .locals 2

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x54c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v0, 0xce6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlaystationController(I)Z
    .locals 2

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0x54c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isXboxController(I)Z
    .locals 2

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v1, 0x401

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    const/16 v0, 0x45e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportsAnalogTriggers(I)Z
    .locals 0

    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(Landroid/view/InputDevice;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static supportsAnalogTriggers(Landroid/view/InputDevice;)Z
    .locals 4

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method
