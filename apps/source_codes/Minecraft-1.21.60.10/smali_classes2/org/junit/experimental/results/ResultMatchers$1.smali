.class Lorg/junit/experimental/results/ResultMatchers$1;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ResultMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/results/ResultMatchers;->failureCountIs(I)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Lorg/junit/experimental/results/PrintableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$count:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/junit/experimental/results/ResultMatchers$1;->val$count:I

    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/junit/experimental/results/ResultMatchers$1;->val$count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/junit/experimental/results/PrintableResult;

    invoke-virtual {p0, p1}, Lorg/junit/experimental/results/ResultMatchers$1;->matchesSafely(Lorg/junit/experimental/results/PrintableResult;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Lorg/junit/experimental/results/PrintableResult;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/junit/experimental/results/PrintableResult;->failureCount()I

    move-result p1

    iget v0, p0, Lorg/junit/experimental/results/ResultMatchers$1;->val$count:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
