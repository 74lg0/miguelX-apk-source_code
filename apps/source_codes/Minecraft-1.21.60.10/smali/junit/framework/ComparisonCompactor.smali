.class public Ljunit/framework/ComparisonCompactor;
.super Ljava/lang/Object;
.source "ComparisonCompactor.java"


# static fields
.field private static final DELTA_END:Ljava/lang/String; = "]"

.field private static final DELTA_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private fActual:Ljava/lang/String;

.field private fContextLength:I

.field private fExpected:Ljava/lang/String;

.field private fPrefix:I

.field private fSuffix:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    iput-object p2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iput-object p3, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    return-void
.end method

.method private areStringsEqual()Z
    .locals 2

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private compactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->computeCommonPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget v0, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->computeCommonSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private computeCommonPrefix()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    if-le v1, v2, :cond_0

    const-string v1, "..."

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private computeCommonSuffix()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fContextLength:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v1, "..."

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findCommonPrefix()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    iget v3, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private findCommonSuffix()V
    .locals 4

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Ljunit/framework/ComparisonCompactor;->fPrefix:I

    if-lt v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Ljunit/framework/ComparisonCompactor;->fSuffix:I

    return-void
.end method


# virtual methods
.method public compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->areStringsEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->findCommonPrefix()V

    invoke-direct {p0}, Ljunit/framework/ComparisonCompactor;->findCommonSuffix()V

    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljunit/framework/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljunit/framework/ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ljunit/framework/ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v1, p0, Ljunit/framework/ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
