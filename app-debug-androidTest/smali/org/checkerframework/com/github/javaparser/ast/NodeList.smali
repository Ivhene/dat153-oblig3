.class public Lorg/checkerframework/com/github/javaparser/ast/NodeList;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Iterable;
.implements Lorg/checkerframework/com/github/javaparser/HasParentNode;
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
.implements Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TN;>;",
        "Ljava/lang/Iterable<",
        "TN;>;",
        "Lorg/checkerframework/com/github/javaparser/HasParentNode<",
        "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
        "TN;>;>;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
        "Lorg/checkerframework/com/github/javaparser/ast/observer/Observable;"
    }
.end annotation


# instance fields
.field private innerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;",
            ">;"
        }
    .end annotation
.end field

.field private parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TN;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "n":Ljava/util/Collection;, "Ljava/util/Collection<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public varargs constructor <init>([Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TN;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 64
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "n":[Lorg/checkerframework/com/github/javaparser/ast/Node;, "[TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void
.end method

.method static synthetic lambda$retainAll$0(Ljava/util/Collection;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "it"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "c",
            "it"
        }
    .end annotation

    .line 353
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$toNodeList$4(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 0
    .param p0, "left"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p1, "right"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 522
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 523
    return-object p0
.end method

.method public static nodeList(Ljava/util/Collection;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .line 107
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 108
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TX;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    .line 109
    return-object v0
.end method

.method public static nodeList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TX;>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .line 113
    .local p0, "nodes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TX;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 114
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TX;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 115
    return-object v0
.end method

.method public static varargs nodeList([Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">([TX;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 101
    .local p0, "nodes":[Lorg/checkerframework/com/github/javaparser/ast/Node;, "[TX;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 102
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TX;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method private notifyElementAdded(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 466
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 467
    return-void
.end method

.method private notifyElementRemoved(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 471
    return-void
.end method

.method private notifyElementReplaced(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 475
    return-void
.end method

.method private own(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    if-nez p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 80
    return-void
.end method

.method private setAsParentNodeOf(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "childNodes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    if-eqz p1, :cond_0

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/HasParentNode;

    .line 530
    .local v1, "current":Lorg/checkerframework/com/github/javaparser/HasParentNode;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/checkerframework/com/github/javaparser/HasParentNode;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    .line 531
    .end local v1    # "current":Lorg/checkerframework/com/github/javaparser/HasParentNode;
    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method private setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "childNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childNode"
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    if-eqz p1, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 539
    :cond_0
    return-void
.end method

.method public static toNodeList()Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda5;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda7;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "node"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->notifyElementAdded(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 181
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->own(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 182
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 183
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "node"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->notifyElementAdded(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 71
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->own(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 72
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAfter(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "afterThisNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    .local p2, "afterThisNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 208
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 211
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 212
    return-object p0

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t find node to insert after."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "otherList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 174
    .local v1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 175
    .end local v1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TN;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 330
    .local v1, "e":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 331
    .end local v1    # "e":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    move p1, v2

    goto :goto_0

    .line 332
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 321
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public addBefore(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "beforeThisNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    .local p2, "beforeThisNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 226
    return-object p0

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t find node to insert before."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addFirst(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 190
    return-object p0
.end method

.method public addLast(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 198
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 388
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    nop

    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TN;>;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 269
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public getParentNode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 250
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 406
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ifNonEmpty(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;>;)V"
        }
    .end annotation

    .line 516
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 518
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 164
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNonEmpty()Z
    .locals 1

    .line 512
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRegistered(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Z
    .locals 1
    .param p1, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$notifyElementAdded$1$org-checkerframework-com-github-javaparser-ast-NodeList(ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "o"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    .line 466
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    invoke-interface {p3, p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->listChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method synthetic lambda$notifyElementRemoved$2$org-checkerframework-com-github-javaparser-ast-NodeList(ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "o"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;

    invoke-interface {p3, p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->listChange(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver$ListChangeType;ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method synthetic lambda$notifyElementReplaced$3$org-checkerframework-com-github-javaparser-ast-NodeList(ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "nodeAddedOrRemoved"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "o"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "index",
            "nodeAddedOrRemoved",
            "o"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-interface {p3, p0, p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->listReplacement(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ILorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TN;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->notifyElementRemoved(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 157
    .local v0, "remove":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 159
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    .line 301
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->notifyElementRemoved(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 341
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 342
    .local v2, "e":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 343
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 344
    :cond_2
    return v0
.end method

.method public removeFirst()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TN;>;)Z"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TN;>;"
    const/4 v0, 0x0

    .line 377
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 378
    .local v5, "e":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move v0, v6

    .line 377
    .end local v5    # "e":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    :cond_2
    return v0
.end method

.method public removeLast()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 500
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "old":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    .local p2, "replacement":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 501
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 502
    const/4 v1, 0x0

    return v1

    .line 504
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 505
    const/4 v1, 0x1

    return v1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TN;>;)V"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TN;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 353
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 354
    .local v5, "e":Ljava/lang/Object;
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    invoke-virtual {p0, v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move v0, v6

    .line 353
    .end local v5    # "e":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    :cond_3
    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)TN;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "element":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 145
    return-object p2

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->notifyElementReplaced(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 148
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 149
    invoke-direct {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 150
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index. The index should be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " excluded. It is instead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parentNode"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .param p1, "parentNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 244
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setAsParentNodeOf(Ljava/util/List;)V

    .line 245
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 124
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TN;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 170
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TN;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 284
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 543
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ", "

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public unregister(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method
