.class public Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;
.super Ljava/lang/Object;
.source "ReleaseUtils.java"


# static fields
.field private static assetsFileNames:[Ljava/lang/String; = null

.field private static final copyTips:Ljava/lang/String; = "\u91ca\u653e\u6570\u636e\u4e2d, \u8bf7\u7a0d\u5019..."

.field private static curDatasizes:I = 0x0

.field private static final dataReleasePathPrdfix:Ljava/lang/String; = "/data/data/"

.field private static final dataZipFileName:Ljava/lang/String; = "data.save"

.field private static final extdataReleasePathPrdfix:Ljava/lang/String;

.field private static final extdataZipFileName:Ljava/lang/String; = "extdata.save"

.field private static final extobbReleasePathPrdfix:Ljava/lang/String;

.field private static final extobbZipFileName:Ljava/lang/String; = "extobb.save"

.field private static gameContext:Landroid/content/Context; = null

.field private static handler:Landroid/os/Handler; = null

.field private static final mIsFirstRunKey:Ljava/lang/String; = "isFirstRun"

.field private static final mIsNeedReleaseDataKey:Ljava/lang/String; = "isNeedReleaseData"

.field private static final mNextActivityClassNameKey:Ljava/lang/String; = "ReleaseDataNextActivityClassName"

.field private static final mSharedFileName:Ljava/lang/String; = "bzReleaseData"

.field private static maxDatasize:I = 0x0

.field private static progressDialog:Landroid/app/ProgressDialog; = null

.field public static final readExternalStorage:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final writeExternalStorage:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->extdataReleasePathPrdfix:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->extobbReleasePathPrdfix:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->assetsFileNames:[Ljava/lang/String;

    const/4 v1, 0x0

    sput v1, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->curDatasizes:I

    sput v1, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->gameContext:Landroid/content/Context;

    new-instance v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils$1;

    invoke-direct {v0}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils$1;-><init>()V

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InputStreamString2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Scanner;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->curDatasizes:I

    return v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->gameContext:Landroid/content/Context;

    return-object v0
.end method

.method static copyFile2Where(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "releaseFilePath"
        }
    .end annotation

    const/16 v0, 0x400

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v2, v0, 0x400

    new-array v2, v2, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_0

    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    sget v6, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->curDatasizes:I

    add-int/2addr v6, v5

    sput v6, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->curDatasizes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v3

    const-wide/16 v10, 0x32

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    move-wide v3, v6

    sget-object v8, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->handler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static dip2px(Landroid/app/Activity;F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "fltDip"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAssetsFileNames(Landroid/content/res/AssetManager;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNextActivityClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ReleaseDataNextActivityClassName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSomeFileInAssetsFileNames(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strFileName",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->assetsFileNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->getAssetsFileNames(Landroid/content/res/AssetManager;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->assetsFileNames:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->assetsFileNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static isFirstRun(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "isFirstRun"

    const-string v1, "bzReleaseData"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    return v2
.end method

.method static isNeedDynamicRequestPermission(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static isNeedReleaseData(Landroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "bzReleaseData"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isNeedReleaseData"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    const-string v7, "data.save"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v3

    :cond_1
    const-string v7, "extdata.save"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v3

    :cond_2
    const-string v7, "extobb.save"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    return v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static startReleaseData(Landroid/content/Context;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "extobb.save"

    const-string v2, "extdata.save"

    const-string v3, "data.save"

    const-string v4, ""

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "startReleaseData: call"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return v5

    :cond_0
    sput-object v1, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->gameContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->extdataReleasePathPrdfix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->extobbReleasePathPrdfix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :try_start_0
    invoke-virtual {v9, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    :goto_0
    array-length v5, v14

    if-ge v15, v5, :cond_4

    aget-object v5, v14, v15

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v9, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v6, v5

    sget v5, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v5, v5, v16

    sput v5, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    :cond_1
    aget-object v5, v14, v15

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v9, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v7, v5

    sget v5, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v5, v5, v16

    sput v5, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    :cond_2
    aget-object v5, v14, v15

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget v8, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v16

    add-int v8, v8, v16

    sput v8, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v5

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v5

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    sget-object v2, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v2, 0x0

    return v2

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    sget v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->maxDatasize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v2, "isNeedReleaseData"

    const-string v3, "bzReleaseData"

    const/4 v5, 0x1

    if-gtz v0, :cond_5

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v5

    :cond_5
    sget-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->handler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v6, :cond_6

    invoke-static {v1, v6, v11}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->unzipFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    invoke-static {v1, v7, v12}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->unzipFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    invoke-static {v1, v8, v13}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->unzipFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_8
    sget v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->curDatasizes:I

    if-lez v0, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->handler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v5

    :cond_9
    const-string v0, "\u6570\u636e\u91ca\u653e\u4e0d\u5b8c\u6574!"

    invoke-static {v0}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method static unzipFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "inputStream",
            "releaseDirPath"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dirRelease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_3
    goto :goto_0

    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->copyFile2Where(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/releasedata/ReleaseDataActivity/LogUtil;->e(Ljava/lang/String;)V

    :goto_2
    goto :goto_0
.end method
