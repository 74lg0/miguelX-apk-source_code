.class Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
.super Ljava/lang/Object;
.source "JJTAddressListParserState.java"


# instance fields
.field private marks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/apache/james/mime4j/field/address/parser/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sp:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method


# virtual methods
.method clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    :goto_0
    iget p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method

.method closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lorg/apache/james/mime4j/field/address/parser/Node;I)V

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    return-void
.end method

.method closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodeArity()I

    move-result p2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lorg/apache/james/mime4j/field/address/parser/Node;I)V

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    :goto_1
    return-void
.end method

.method nodeArity()I
    .locals 2

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nodeCreated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    return v0
.end method

.method openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtOpen()V

    return-void
.end method

.method peekNode()Lorg/apache/james/mime4j/field/address/parser/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method pushNode(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    return-void
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    return-void
.end method

.method rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method
