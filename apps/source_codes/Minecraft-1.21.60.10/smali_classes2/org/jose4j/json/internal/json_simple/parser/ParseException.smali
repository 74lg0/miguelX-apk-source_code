.class public Lorg/jose4j/json/internal/json_simple/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a3L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    iput p2, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    iput-object p3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    iget v0, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    const-string v2, "."

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const-string v1, "Unknown error at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Unexpected exception at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Unexpected token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") at position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setErrorType(I)V
    .locals 0

    iput p1, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    return-void
.end method

.method public setUnexpectedObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method
