.class Lorg/simpleframework/xml/core/CompositeKey;
.super Ljava/lang/Object;
.source "CompositeKey.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    :cond_2
    iget-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {p2, p1, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    iget-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/CompositeKey;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/AttributeException;

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Can not have %s as an attribute for %s at %s"

    invoke-direct {p1, v1, v0}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeKey;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    filled-new-array {v1, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Can not read key of %s for %s at %s"

    invoke-direct {p1, v0, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/CompositeKey;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/ElementException;

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Can not have %s as an attribute for %s at %s"

    invoke-direct {p1, v1, v0}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/ElementException;

    iget-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Can not have %s as an attribute for %s"

    invoke-direct {p1, v0, p2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
