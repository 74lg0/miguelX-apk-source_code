.class public Lorg/simpleframework/xml/convert/AnnotationStrategy;
.super Ljava/lang/Object;
.source "AnnotationStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;-><init>(Lorg/simpleframework/xml/strategy/Strategy;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterScanner;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    iput-object p1, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Lorg/simpleframework/xml/strategy/Value;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v0, p1, p3}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/stream/InputNode;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v0, p3, p2, p1}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0

    :cond_1
    return-object p3
.end method

.method private write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object p1

    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object p3

    check-cast p3, Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result p1

    return p1

    :cond_0
    return p4
.end method
