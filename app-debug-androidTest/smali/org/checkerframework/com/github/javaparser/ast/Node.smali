.class public abstract Lorg/checkerframework/com/github/javaparser/ast/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/com/github/javaparser/HasParentNode;
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;,
        Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lorg/checkerframework/com/github/javaparser/HasParentNode<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABSOLUTE_BEGIN_LINE:I = -0x1

.field public static final ABSOLUTE_END_LINE:I = -0x2

.field public static NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final SYMBOL_RESOLVER_KEY:Lorg/checkerframework/com/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected static final prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

.field private static toStringPrettyPrinterConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;


# instance fields
.field private childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private data:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
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

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private orphanComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private parsed:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private range:Lorg/checkerframework/com/github/javaparser/Range;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->toStringPrettyPrinterConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    .line 149
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->setPrintComments(Z)Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    .line 722
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$1;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 1
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->childNodes:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->orphanComments:Ljava/util/List;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    .line 175
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->PARSED:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parsed:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    .line 179
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 180
    return-void
.end method

.method public static getToStringPrettyPrinterConfiguration()Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .locals 1

    .line 669
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->toStringPrettyPrinterConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    return-object v0
.end method

.method static synthetic lambda$findAll$9(Ljava/util/function/Predicate;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "found"    # Ljava/util/List;
    .param p2, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "predicate",
            "found",
            "n"
        }
    .end annotation

    .line 809
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_0
    return-void
.end method

.method static synthetic lambda$findFirst$10(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 1
    .param p0, "nodeType"    # Ljava/lang/Class;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "node"
        }
    .end annotation

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 838
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findFirst$11(Ljava/lang/Class;Ljava/util/function/Predicate;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 2
    .param p0, "nodeType"    # Ljava/lang/Class;
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "predicate",
            "node"
        }
    .end annotation

    .line 848
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 850
    .local v0, "castNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 854
    .end local v0    # "castNode":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getSymbolResolver$5(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    .locals 3
    .param p0, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    .line 713
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lorg/checkerframework/com/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    .line 714
    .local v0, "symbolResolver":Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    if-eqz v0, :cond_0

    .line 717
    return-object v0

    .line 715
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Symbol resolution not configured: to configure consider setting a SymbolResolver in the ParserConfiguration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$getSymbolResolver$6()Ljava/lang/IllegalStateException;
    .locals 2

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The node is not inserted in a CompilationUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$isAncestorOf$12(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p0, "descendant"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "descendant",
            "n"
        }
    .end annotation

    .line 866
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$registerForSubtree$4(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p0, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .param p1, "c"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "observer",
            "c"
        }
    .end annotation

    .line 605
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;)I
    .locals 2
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v0, v0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v1, v1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->compareTo(Lorg/checkerframework/com/github/javaparser/Position;)I

    move-result v0

    return v0

    .line 138
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$tryAddImportToParentCompilationUnit$2(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "clazz",
            "p"
        }
    .end annotation

    .line 409
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method static synthetic lambda$walk$8(Ljava/lang/Class;Ljava/util/function/Consumer;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p0, "nodeType"    # Ljava/lang/Class;
    .param p1, "consumer"    # Ljava/util/function/Consumer;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "consumer",
            "node"
        }
    .end annotation

    .line 788
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 791
    :cond_0
    return-void
.end method

.method public static setToStringPrettyPrinterConfiguration(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V
    .locals 0
    .param p0, "toStringPrettyPrinterConfiguration"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toStringPrettyPrinterConfiguration"
        }
    .end annotation

    .line 673
    sput-object p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->toStringPrettyPrinterConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    .line 674
    return-void
.end method

.method private treeIterable(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)V

    return-object v0
.end method

.method private treeIterator(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;
    .locals 2
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 731
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 743
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown traversal choice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :pswitch_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$ParentsVisitor;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    .line 739
    :pswitch_1
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$DirectChildrenIterator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    .line 737
    :pswitch_2
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PreOrderIterator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    .line 735
    :pswitch_3
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$PostOrderIterator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    .line 733
    :pswitch_4
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node$BreadthFirstIterator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addOrphanComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->orphanComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 323
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->clone()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2

    .line 641
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public containsData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "*>;)Z"
        }
    .end annotation

    .line 493
    .local p1, "key":Lorg/checkerframework/com/github/javaparser/ast/DataKey;, "Lorg/checkerframework/com/github/javaparser/ast/DataKey<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected customInitialization()V
    .locals 0

    .line 188
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 299
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/EqualsVisitor;->equals(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0

    .line 300
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 798
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v0, "found":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 800
    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 807
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "found":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;-><init>(Ljava/util/function/Predicate;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 812
    return-object v0
.end method

.method public findCompilationUnit()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findRootNode()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    .line 705
    .local v0, "rootNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    if-eqz v1, :cond_0

    .line 706
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 708
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 834
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findFirst(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 847
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TN;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findFirst(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findFirst(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 4
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "traversal",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/util/Optional<",
            "TT;>;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 821
    .local p2, "consumer":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/Optional<TT;>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->treeIterable(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 822
    .local v1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    .line 823
    .local v2, "result":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    return-object v2

    .line 826
    .end local v1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v2    # "result":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    goto :goto_0

    .line 827
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findRootNode()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2

    .line 693
    move-object v0, p0

    .line 694
    .local v0, "n":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    goto :goto_0

    .line 697
    :cond_0
    return-object v0
.end method

.method public getAllContainedComments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 361
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 363
    .local v2, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 364
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getAllContainedComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    .end local v2    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 366
    :cond_0
    return-object v0
.end method

.method public getChildNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->childNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 422
    .local v2, "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_0
    invoke-virtual {v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    .end local v2    # "child":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 427
    :cond_1
    return-object v0
.end method

.method public getComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "TM;>;)TM;"
        }
    .end annotation

    .line 450
    .local p1, "key":Lorg/checkerframework/com/github/javaparser/ast/DataKey;, "Lorg/checkerframework/com/github/javaparser/ast/DataKey<TM;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    const-string v1, "No data of this type found. Use containsData to check for this first."

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "value":Ljava/lang/Object;, "TM;"
    if-eqz v0, :cond_0

    .line 457
    return-object v0

    .line 455
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    .end local v0    # "value":Ljava/lang/Object;, "TM;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "*>;>;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 469
    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 649
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->nodeMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    return-object v0
.end method

.method public getNodesByType(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrphanComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->orphanComments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

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

    .line 307
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0

    .line 554
    return-object p0
.end method

.method public getParsed()Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parsed:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    return-object v0
.end method

.method public getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;
    .locals 2

    .line 712
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda10;-><init>()V

    .line 718
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    .line 712
    return-object v0
.end method

.method public getTokenRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 294
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/HashCodeVisitor;->hashCode(Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result v0

    return v0
.end method

.method public isAncestorOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "descendant"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descendant"
        }
    .end annotation

    .line 866
    if-eq p0, p1, :cond_0

    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 617
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$notifyPropertyChange$3$org-checkerframework-com-github-javaparser-ast-Node(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 0
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "o"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "property",
            "oldValue",
            "newValue",
            "o"
        }
    .end annotation

    .line 564
    invoke-interface {p4, p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->propertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$setParentNode$1$org-checkerframework-com-github-javaparser-ast-Node(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .param p1, "newParentNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "o"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newParentNode",
            "o"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-interface {p2, p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;->parentChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method synthetic lambda$treeIterable$7$org-checkerframework-com-github-javaparser-ast-Node(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;
    .locals 1
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "traversal"
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->treeIterator(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            "TP;TP;)V"
        }
    .end annotation

    .line 564
    .local p2, "oldValue":Ljava/lang/Object;, "TP;"
    .local p3, "newValue":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 565
    return-void
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

    .line 574
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method public register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;)V
    .locals 3
    .param p1, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .param p2, "mode"    # Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observer",
            "mode"
        }
    .end annotation

    .line 582
    if-eqz p2, :cond_0

    .line 585
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This mode is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :pswitch_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;->transformInPropagatingObserver(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)Lorg/checkerframework/com/github/javaparser/ast/observer/PropagatingAstObserver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 594
    goto :goto_0

    .line 590
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 591
    goto :goto_0

    .line 587
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 588
    nop

    .line 598
    :goto_0
    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode should be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForSubtree(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 3
    .param p1, "observer"    # Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 604
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 605
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda14;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 606
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 607
    .local v1, "property":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {v1, p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 609
    .local v2, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 612
    .end local v1    # "property":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v2    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    :cond_0
    goto :goto_0

    .line 613
    :cond_1
    return-void
.end method

.method public remove()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_0
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

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

    .line 622
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 623
    return v0

    .line 624
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v1, :cond_1

    .line 625
    if-ne p1, v1, :cond_1

    .line 626
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->removeComment()Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 627
    const/4 v0, 0x1

    return v0

    .line 630
    :cond_1
    return v0
.end method

.method public removeComment()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2

    .line 635
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p1, "key":Lorg/checkerframework/com/github/javaparser/ast/DataKey;, "Lorg/checkerframework/com/github/javaparser/ast/DataKey<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    return-void
.end method

.method public removeForced()V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 550
    :cond_0
    return-void
.end method

.method public removeOrphanComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Z
    .locals 3
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->orphanComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 328
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 331
    :cond_0
    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    .line 531
    const/4 v0, 0x0

    return v0

    .line 533
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 679
    return v0

    .line 680
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v1, :cond_1

    .line 681
    if-ne p1, v1, :cond_1

    .line 682
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 683
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_1
    return v0
.end method

.method protected setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
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

    .line 399
    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 402
    :cond_0
    return-void
.end method

.method protected setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNodeForChildren()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 561
    :cond_0
    return-void
.end method

.method public final setBlockComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 272
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "comment"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "comment"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-ne v0, p1, :cond_0

    .line 244
    return-object p0

    .line 246
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_1

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->setCommentedNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 250
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->comment:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 251
    if-eqz p1, :cond_2

    .line 252
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->setCommentedNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 254
    :cond_2
    return-object p0
.end method

.method public setData(Lorg/checkerframework/com/github/javaparser/ast/DataKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/DataKey<",
            "TM;>;TM;)V"
        }
    .end annotation

    .line 482
    .local p1, "key":Lorg/checkerframework/com/github/javaparser/ast/DataKey;, "Lorg/checkerframework/com/github/javaparser/ast/DataKey<TM;>;"
    .local p2, "object":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public final setLineComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .line 263
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newParentNode"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p1, "newParentNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newParentNode"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-ne p1, v0, :cond_0

    .line 378
    return-object p0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 382
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, v0, Lorg/checkerframework/com/github/javaparser/ast/Node;->childNodes:Ljava/util/List;

    .line 384
    .local v0, "parentChildNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "parentChildNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parentNode:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 392
    if-eqz p1, :cond_3

    .line 393
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/ast/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_3
    return-object p0
.end method

.method public setParsed(Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .param p1, "parsed"    # Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parsed"
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->parsed:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    .line 665
    return-object p0
.end method

.method public bridge synthetic setRange(Lorg/checkerframework/com/github/javaparser/Range;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "range"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setRange(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setRange(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    if-ne v0, p1, :cond_0

    .line 230
    return-object p0

    .line 232
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RANGE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    .line 234
    return-object p0
.end method

.method public bridge synthetic setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 216
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v1, v1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v2, v2, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Range;-><init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->range:Lorg/checkerframework/com/github/javaparser/Range;

    .line 221
    :goto_1
    return-object p0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 762
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->treeIterator(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x101

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 755
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->treeIterator(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x101

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 281
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node;->toStringPrettyPrinterConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)Ljava/lang/String;
    .locals 1
    .param p1, "prettyPrinterConfiguration"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prettyPrinterConfiguration"
        }
    .end annotation

    .line 289
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 409
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 410
    return-void
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

    .line 569
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 570
    return-void
.end method

.method public walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 787
    .local p1, "nodeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->walk(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V

    .line 792
    return-void
.end method

.method public walk(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 780
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->walk(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V

    .line 781
    return-void
.end method

.method public walk(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "traversal"    # Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "traversal",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->treeIterable(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 772
    .local v1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 773
    .end local v1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method
