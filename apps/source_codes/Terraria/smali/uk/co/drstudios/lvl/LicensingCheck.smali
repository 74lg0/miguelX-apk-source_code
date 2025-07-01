.class public Luk/co/drstudios/lvl/LicensingCheck;
.super Landroid/os/Binder;
.source "LicensingCheck.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# static fields
.field private static final SALT:[B


# instance fields
.field Reason:I

.field Result:Ljava/lang/String;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mContext:Landroid/content/Context;

.field private mDone:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 29
    fill-array-data v0, :array_0

    sput-object v0, Luk/co/drstudios/lvl/LicensingCheck;->SALT:[B

    return-void

    :array_0
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x4dt
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->mDone:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public SetContext(Landroid/content/Context;)V
    .locals 0

    .line 23
    iput-object p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    return-void
.end method

.method public allow(I)V
    .locals 2

    const-string v0, "allow"

    .line 66
    iput-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->Result:Ljava/lang/String;

    .line 67
    iput p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->Reason:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mDone:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public applicationError(I)V
    .locals 2

    const-string v0, "applicationError"

    .line 86
    iput-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->Result:Ljava/lang/String;

    .line 87
    iput p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->Reason:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applicationError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mDone:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dontAllow(I)V
    .locals 2

    const-string v0, "dontAllow"

    .line 76
    iput-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->Result:Ljava/lang/String;

    .line 77
    iput p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->Reason:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dontAllow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mDone:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public followLink(Ljava/lang/String;)V
    .locals 4

    .line 51
    iget-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v2, Luk/co/drstudios/lvl/LicensingCheck;->SALT:[B

    iget-object v3, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    iget-object v2, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 57
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v2, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 58
    iget-object p1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->followLastLicensingUrl(Landroid/content/Context;)V

    return-void
.end method

.method public performCheck(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 37
    iget-object v0, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v2, Luk/co/drstudios/lvl/LicensingCheck;->SALT:[B

    iget-object v3, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    iget-object v2, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 43
    iput-object p2, p0, Luk/co/drstudios/lvl/LicensingCheck;->mDone:Ljava/lang/Runnable;

    .line 45
    new-instance p2, Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Luk/co/drstudios/lvl/LicensingCheck;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, v0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object p2, p0, Luk/co/drstudios/lvl/LicensingCheck;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 46
    invoke-virtual {p2, p0}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    return-void
.end method
