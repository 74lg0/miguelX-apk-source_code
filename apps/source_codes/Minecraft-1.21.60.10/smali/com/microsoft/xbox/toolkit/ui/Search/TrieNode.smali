.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
.super Ljava/lang/Object;
.source "TrieNode.java"


# instance fields
.field public IsWord:Z

.field public MoreNodes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Character;",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field public Words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;->visit(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->accept(Lcom/microsoft/xbox/toolkit/ui/Search/ITrieNodeVisitor;)V

    goto :goto_0

    :cond_1
    return-void
.end method
