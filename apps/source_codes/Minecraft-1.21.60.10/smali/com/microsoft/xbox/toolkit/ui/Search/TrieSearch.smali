.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;
.super Ljava/lang/Object;
.source "TrieSearch.java"


# static fields
.field private static ComponentName:Ljava/lang/String; = "com.microsoft.xbox.toolkit.ui.Search.TrieSearch"

.field private static DefaultTrieDepth:I = 0x4


# instance fields
.field public RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

.field public TrieDepth:I

.field public WordsDictionary:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    sget v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->DefaultTrieDepth:I

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    return-void
.end method

.method public static findWordIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->isNullOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public static getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->IsWord:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-static {v2, p1, v3}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getTrieNodes(Ljava/util/Hashtable;I)Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-gt v2, p1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/Hashtable;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v5, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    :cond_2
    iget-object v5, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    new-instance v7, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v7}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-le v2, p1, :cond_6

    iget-object v4, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    :cond_5
    iget-object v4, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->IsWord:Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static getWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-gt v4, p1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-le v4, p1, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {p0, p1, v3}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method

.method public static getWordsDictionary(Ljava/util/List;)Ljava/util/Hashtable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;

    iget-object v2, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-array v2, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->findWordIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget-object v5, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static isNullOrWhitespace(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public initialize(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getWordsDictionary(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getTrieNodes(Ljava/util/Hashtable;I)Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
