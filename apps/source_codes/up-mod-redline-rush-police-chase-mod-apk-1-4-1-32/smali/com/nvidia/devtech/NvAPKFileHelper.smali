.class public Lcom/nvidia/devtech/NvAPKFileHelper;
.super Ljava/lang/Object;
.source "NvAPKFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;
    }
.end annotation


# static fields
.field private static instance:Lcom/nvidia/devtech/NvAPKFileHelper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/nvidia/devtech/NvAPKFileHelper;

    invoke-direct {v0}, Lcom/nvidia/devtech/NvAPKFileHelper;-><init>()V

    sput-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;
    .locals 1

    .line 53
    sget-object v0, Lcom/nvidia/devtech/NvAPKFileHelper;->instance:Lcom/nvidia/devtech/NvAPKFileHelper;

    return-object v0
.end method


# virtual methods
.method public closeFileAndroid(Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strm"
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 159
    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->data:[B

    const/4 v0, 0x0

    .line 160
    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    return-void
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 202
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jave getCacheDir() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 208
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getCacheDir() failed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public openFileAndroid(Ljava/lang/String;)Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;

    invoke-direct {v0, p0}, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;-><init>(Lcom/nvidia/devtech/NvAPKFileHelper;)V

    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    const/4 v2, 0x0

    .line 73
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->length:I

    .line 74
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->position:I

    .line 75
    iput v2, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->bufferSize:I

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    .line 80
    iget-object p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 81
    iput p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->length:I

    .line 82
    iget-object p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    const/16 p1, 0x400

    .line 83
    iput p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->bufferSize:I

    .line 84
    iget p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->bufferSize:I

    new-array p1, p1, [B

    iput-object p1, v0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public readFileAndroid(Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strm",
            "size"
        }
    .end annotation

    .line 97
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->bufferSize:I

    if-le p2, v0, :cond_0

    .line 99
    new-array v0, p2, [B

    iput-object v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->data:[B

    .line 100
    iput p2, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->bufferSize:I

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    iget-object v1, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 105
    iget v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->position:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->position:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method readPersistentData(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 171
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 172
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readPersistentData() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public seekFileAndroid(Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;I)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strm",
            "offset"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 125
    :try_start_0
    iget-object v2, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x80

    move-wide v2, v0

    const/16 v4, 0x80

    :goto_0
    if-lez p2, :cond_0

    if-lez v4, :cond_0

    .line 130
    :try_start_1
    iget-object v5, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->is:Ljava/io/InputStream;

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 134
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-long/2addr v0, v2

    int-to-long v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catch_1
    :cond_0
    long-to-int p2, v0

    .line 146
    iput p2, p1, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->position:I

    return-wide v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public writePersistentData(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/nvidia/devtech/NvAPKFileHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writePersistentData() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
