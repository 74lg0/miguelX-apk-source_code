.class public Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
.super Lorg/apache/james/mime4j/field/ParseException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Cannot parse field"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string p1, "line.separator"

    const-string v0, "\n"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "line.separator"

    const-string v0, "\n"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;[[I[Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->specialConstructor:Z

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->expectedTokenSequences:[[I

    iput-object p3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->tokenImage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_7

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_0
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMessage()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->specialConstructor:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->expectedTokenSequences:[[I

    array-length v5, v4

    const-string v6, " "

    const-string v7, "    "

    const/4 v8, 0x1

    if-ge v2, v5, :cond_4

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    array-length v3, v4

    :cond_1
    move v4, v1

    :goto_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v2

    array-length v9, v5

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget v5, v5, v4

    aget-object v5, v9, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    array-length v4, v5

    sub-int/2addr v4, v8

    aget v4, v5, v4

    if-eqz v4, :cond_3

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const-string v4, "Encountered \""

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_7

    if-eqz v5, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget v9, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    if-nez v9, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginColumn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->expectedTokenSequences:[[I

    array-length v2, v2

    if-ne v2, v8, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting one of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
