.class Lorg/simpleframework/xml/core/CompositeInlineList;
.super Ljava/lang/Object;
.source "CompositeInlineList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final name:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Entry %s does not match %s for %s"

    invoke-direct {p1, v0, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineList;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v3, p1, v1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, v2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineList;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v2, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Entry %s does not match %s for %s"

    invoke-direct {p1, v0, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method
