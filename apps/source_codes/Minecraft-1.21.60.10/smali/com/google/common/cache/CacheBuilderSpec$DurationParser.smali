.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0x68

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key %s invalid unit: was %s, must end with one of [dhms]"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key %s value set to %s, must be integer"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "value of key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " omitted"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
