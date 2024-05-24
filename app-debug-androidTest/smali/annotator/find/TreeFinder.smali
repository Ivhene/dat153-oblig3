.class public Lannotator/find/TreeFinder;
.super Lcom/sun/source/util/TreeScanner;
.source "TreeFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/TreeFinder$DeclarationPositionFinder;,
        Lannotator/find/TreeFinder$TypePositionFinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreeScanner<",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lannotator/find/Insertion;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final comment:Ljava/lang/String; = "//.*$|/\\*[^*]*+\\*++(?:[^*/][^*]*+\\*++)*+/"

.field public static final dbug:Lscenelib/annotations/io/DebugWriter;

.field private static final literal:Ljava/lang/String; = "\'(?:(?:\\\\(?:\'|[^\']*+))|[^\\\\\'])\'|\"(?:\\\\.|[^\\\\\"])*\""

.field private static final nonDelimSlash:Ljava/lang/String; = "/(?=[^*/])"

.field public static final stak:Lscenelib/annotations/io/DebugWriter;

.field public static final warn:Lscenelib/annotations/io/DebugWriter;


# instance fields
.field private final astInsertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field private final dpf:Lannotator/find/TreeFinder$DeclarationPositionFinder;

.field private final insertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/io/ASTPath;",
            ">;",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field private final tpf:Lannotator/find/TreeFinder$TypePositionFinder;

.field private final tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

.field treePathCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/util/TreePath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    nop

    .line 90
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 91
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lannotator/find/TreeFinder;->stak:Lscenelib/annotations/io/DebugWriter;

    .line 92
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 912
    invoke-direct {p0}, Lcom/sun/source/util/TreeScanner;-><init>()V

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lannotator/find/TreeFinder;->treePathCache:Ljava/util/Map;

    .line 913
    iput-object p1, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 914
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/TreeFinder;->insertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    .line 915
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/TreeFinder;->astInsertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    .line 916
    new-instance v0, Lannotator/find/TreeFinder$TypePositionFinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lannotator/find/TreeFinder$TypePositionFinder;-><init>(Lannotator/find/TreeFinder;Lannotator/find/TreeFinder$1;)V

    iput-object v0, p0, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    .line 917
    new-instance v0, Lannotator/find/TreeFinder$DeclarationPositionFinder;

    invoke-direct {v0, p0, v1}, Lannotator/find/TreeFinder$DeclarationPositionFinder;-><init>(Lannotator/find/TreeFinder;Lannotator/find/TreeFinder$1;)V

    iput-object v0, p0, Lannotator/find/TreeFinder;->dpf:Lannotator/find/TreeFinder$DeclarationPositionFinder;

    .line 918
    return-void
.end method

.method static synthetic access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;
    .param p1, "x1"    # Lcom/sun/source/tree/Tree;

    .line 89
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder;->astRecord(Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;

    .line 89
    iget-object v0, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    return-object v0
.end method

.method static synthetic access$200(Lannotator/find/TreeFinder;CI)I
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;
    .param p1, "x1"    # C
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lannotator/find/TreeFinder;->getFirstInstanceAfter(CI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lannotator/find/TreeFinder;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;
    .param p1, "x1"    # Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 89
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder;->findMethodName(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;
    .param p1, "x1"    # Lcom/sun/source/tree/Tree;

    .line 89
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder;->parent(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lannotator/find/TreeFinder;CIII)I
    .locals 1
    .param p0, "x0"    # Lannotator/find/TreeFinder;
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # C

    .line 89
    invoke-static {p0}, Lannotator/find/TreeFinder;->otherThan(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addConstructor(Lcom/sun/source/util/TreePath;Lannotator/find/ConstructorInsertion;Lcom/sun/source/tree/MethodTree;)V
    .locals 9
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "cons"    # Lannotator/find/ConstructorInsertion;
    .param p3, "method"    # Lcom/sun/source/tree/MethodTree;

    .line 1785
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getReceiverInsertion()Lannotator/find/ReceiverInsertion;

    move-result-object v0

    .line 1786
    .local v0, "recv":Lannotator/find/ReceiverInsertion;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/MethodTree;

    .line 1787
    .local v1, "leaf":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ClassTree;

    .line 1788
    .local v2, "parent":Lcom/sun/source/tree/ClassTree;
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v3

    .line 1789
    .local v3, "baseType":Lscenelib/type/DeclaredType;
    invoke-virtual {v3}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1790
    invoke-virtual {v3}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v4

    .line 1791
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1792
    .local v5, "className":Ljava/lang/String;
    new-instance v6, Lscenelib/type/DeclaredType;

    invoke-direct {v6, v5}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v6, "newType":Lscenelib/type/Type;
    invoke-virtual {p2, v6}, Lannotator/find/ConstructorInsertion;->setType(Lscenelib/type/Type;)V

    .line 1794
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1795
    .local v8, "ann":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 1796
    .end local v8    # "ann":Ljava/lang/String;
    goto :goto_0

    .line 1798
    .end local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "newType":Lscenelib/type/Type;
    :cond_0
    if-eqz v0, :cond_3

    .line 1799
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1800
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lannotator/find/Insertion;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    .local v5, "recvInner":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-direct {p0, p1, v0, v1}, Lannotator/find/TreeFinder;->addReceiverType(Lcom/sun/source/util/TreePath;Lannotator/find/ReceiverInsertion;Lcom/sun/source/tree/MethodTree;)V

    .line 1802
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1803
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lannotator/find/Insertion;

    .line 1804
    .local v6, "i":Lannotator/find/Insertion;
    invoke-virtual {v6}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    invoke-virtual {v7}, Lannotator/find/Criteria;->isOnReceiver()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1805
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1808
    .end local v6    # "i":Lannotator/find/Insertion;
    :cond_1
    goto :goto_1

    .line 1809
    :cond_2
    invoke-virtual {v0}, Lannotator/find/ReceiverInsertion;->getType()Lscenelib/type/Type;

    move-result-object v6

    .line 1810
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    invoke-virtual {v7}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v7

    .line 1809
    invoke-static {v5, v6, v7}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 1812
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lannotator/find/Insertion;>;"
    .end local v5    # "recvInner":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    :cond_3
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getType()Lscenelib/type/Type;

    move-result-object v5

    .line 1813
    invoke-virtual {p2}, Lannotator/find/ConstructorInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v6

    invoke-virtual {v6}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    .line 1812
    invoke-static {v4, v5, v6}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 1814
    return-void
.end method

.method private addNewType(Lcom/sun/source/util/TreePath;Lannotator/find/NewInsertion;Lcom/sun/source/tree/NewArrayTree;)V
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "neu"    # Lannotator/find/NewInsertion;
    .param p3, "newArray"    # Lcom/sun/source/tree/NewArrayTree;

    .line 1769
    invoke-virtual {p2}, Lannotator/find/NewInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    .line 1770
    .local v0, "baseType":Lscenelib/type/DeclaredType;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1771
    invoke-virtual {p2}, Lannotator/find/NewInsertion;->getType()Lscenelib/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lscenelib/type/Type;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 1772
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p3

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v2

    .line 1774
    .local v2, "newType":Lscenelib/type/Type;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1775
    .local v4, "ann":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 1776
    .end local v4    # "ann":Ljava/lang/String;
    goto :goto_0

    .line 1777
    :cond_0
    invoke-virtual {p2, v2}, Lannotator/find/NewInsertion;->setType(Lscenelib/type/Type;)V

    .line 1779
    .end local v1    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "newType":Lscenelib/type/Type;
    :cond_1
    invoke-virtual {p2}, Lannotator/find/NewInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lannotator/find/NewInsertion;->getType()Lscenelib/type/Type;

    move-result-object v2

    .line 1780
    invoke-virtual {p2}, Lannotator/find/NewInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v3

    invoke-virtual {v3}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v3

    .line 1779
    invoke-static {v1, v2, v3}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 1781
    return-void
.end method

.method private addReceiverType(Lcom/sun/source/util/TreePath;Lannotator/find/ReceiverInsertion;Lcom/sun/source/tree/MethodTree;)V
    .locals 19
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "receiver"    # Lannotator/find/ReceiverInsertion;
    .param p3, "method"    # Lcom/sun/source/tree/MethodTree;

    .line 1681
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    .line 1682
    .local v1, "parent":Lcom/sun/source/util/TreePath;
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1683
    .local v2, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 1686
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-virtual/range {p2 .. p2}, Lannotator/find/ReceiverInsertion;->getType()Lscenelib/type/Type;

    move-result-object v4

    .line 1687
    .local v4, "outerType":Lscenelib/type/Type;
    invoke-virtual/range {p2 .. p2}, Lannotator/find/ReceiverInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v5

    .line 1689
    .local v5, "baseType":Lscenelib/type/DeclaredType;
    const/4 v6, 0x0

    .line 1690
    .local v6, "innerTypes":Lscenelib/type/DeclaredType;
    const/4 v7, 0x0

    .line 1693
    .local v7, "staticType":Lscenelib/type/DeclaredType;
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v8}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v8

    const/4 v10, 0x1

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1694
    .local v8, "isCon":Z
    :goto_0
    move v11, v8

    .line 1696
    .local v11, "skip":Z
    :goto_1
    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v12, :cond_a

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v12, :cond_a

    .line 1698
    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v12, :cond_1

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v12, :cond_1

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v12, :cond_1

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v12, :cond_9

    .line 1702
    :cond_1
    move-object v12, v2

    check-cast v12, Lcom/sun/source/tree/ClassTree;

    .line 1703
    .local v12, "clazz":Lcom/sun/source/tree/ClassTree;
    invoke-interface {v12}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1704
    .local v13, "className":Ljava/lang/String;
    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v14, :cond_3

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v14, :cond_3

    .line 1706
    invoke-interface {v12}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v14, v10

    .line 1707
    .local v14, "isStatic":Z
    :goto_3
    if-nez v14, :cond_4

    move v15, v10

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    and-int/2addr v11, v15

    .line 1708
    if-eqz v11, :cond_5

    .line 1709
    const/4 v11, 0x0

    .line 1710
    invoke-virtual {v0, v10}, Lannotator/find/ReceiverInsertion;->setQualifyType(Z)V

    goto :goto_6

    .line 1711
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 1714
    new-instance v15, Lscenelib/type/DeclaredType;

    invoke-direct {v15, v13}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .line 1715
    .local v15, "inner":Lscenelib/type/DeclaredType;
    if-nez v7, :cond_6

    .line 1718
    invoke-interface {v12}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/source/tree/TypeParameterTree;

    .line 1719
    .local v17, "tree":Lcom/sun/source/tree/TypeParameterTree;
    new-instance v9, Lscenelib/type/DeclaredType;

    invoke-interface/range {v17 .. v17}, Lcom/sun/source/tree/TypeParameterTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Lscenelib/type/DeclaredType;->addTypeParameter(Lscenelib/type/Type;)V

    .line 1720
    .end local v17    # "tree":Lcom/sun/source/tree/TypeParameterTree;
    const/4 v10, 0x1

    goto :goto_5

    .line 1722
    :cond_6
    if-nez v7, :cond_7

    if-eqz v14, :cond_7

    .line 1724
    invoke-virtual {v4}, Lscenelib/type/Type;->getAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v15, v9}, Lscenelib/type/DeclaredType;->setAnnotations(Ljava/util/List;)V

    .line 1725
    invoke-virtual {v4}, Lscenelib/type/Type;->clearAnnotations()V

    .line 1726
    move-object v7, v15

    .line 1728
    :cond_7
    if-nez v6, :cond_8

    .line 1731
    move-object v6, v15

    goto :goto_6

    .line 1735
    :cond_8
    invoke-virtual {v15, v6}, Lscenelib/type/DeclaredType;->setInnerType(Lscenelib/type/DeclaredType;)V

    .line 1736
    move-object v6, v15

    .line 1740
    .end local v12    # "clazz":Lcom/sun/source/tree/ClassTree;
    .end local v13    # "className":Ljava/lang/String;
    .end local v14    # "isStatic":Z
    .end local v15    # "inner":Lscenelib/type/DeclaredType;
    :cond_9
    :goto_6
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 1741
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1742
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1744
    :cond_a
    if-eqz v8, :cond_c

    if-eqz v6, :cond_b

    goto :goto_7

    .line 1745
    :cond_b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "can\'t annotate (non-existent) receiver of non-inner constructor"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1752
    :cond_c
    :goto_7
    invoke-virtual {v6}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lscenelib/type/DeclaredType;->setName(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v6}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Lscenelib/type/DeclaredType;->setTypeParameters(Ljava/util/List;)V

    .line 1754
    invoke-virtual {v6}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v9

    invoke-virtual {v5, v9}, Lscenelib/type/DeclaredType;->setInnerType(Lscenelib/type/DeclaredType;)V

    .line 1755
    if-eqz v7, :cond_d

    invoke-virtual {v6}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1756
    invoke-virtual {v6}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4, v9}, Lscenelib/type/Type;->setAnnotations(Ljava/util/List;)V

    .line 1759
    :cond_d
    if-nez v7, :cond_e

    move-object v9, v5

    goto :goto_8

    :cond_e
    move-object v9, v7

    .line 1760
    .local v9, "type":Lscenelib/type/Type;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lannotator/find/ReceiverInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v10

    .line 1761
    invoke-virtual/range {p2 .. p2}, Lannotator/find/ReceiverInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v12

    invoke-virtual {v12}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v12

    .line 1760
    invoke-static {v10, v9, v12}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 1764
    invoke-interface/range {p3 .. p3}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v0, v10}, Lannotator/find/ReceiverInsertion;->setAddComma(Z)V

    .line 1765
    return-void
.end method

.method private alreadyPresent(Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Z
    .locals 10
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "ins"    # Lannotator/find/Insertion;

    .line 1556
    const/4 v0, 0x0

    .line 1558
    .local v0, "alreadyPresent":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    const/4 v1, 0x0

    .line 1559
    .local v1, "childExpression":Lcom/sun/source/tree/ExpressionTree;
    if-eqz p1, :cond_b

    .line 1560
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 1561
    .local v3, "n":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_0

    .line 1562
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/ClassTree;

    invoke-interface {v2}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1563
    goto/16 :goto_2

    .line 1564
    :cond_0
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1

    .line 1565
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v2}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1566
    goto/16 :goto_2

    .line 1567
    :cond_1
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_3

    .line 1568
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    .line 1569
    .local v2, "vt":Lcom/sun/source/tree/VariableTree;
    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 1570
    goto/16 :goto_2

    .line 1572
    :cond_2
    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1573
    goto/16 :goto_2

    .line 1574
    .end local v2    # "vt":Lcom/sun/source/tree/VariableTree;
    :cond_3
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_4

    .line 1575
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/TypeCastTree;

    invoke-interface {v2}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1576
    .local v2, "type":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_b

    .line 1577
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 1580
    .end local v2    # "type":Lcom/sun/source/tree/Tree;
    :cond_4
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_5

    .line 1581
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/InstanceOfTree;

    invoke-interface {v2}, Lcom/sun/source/tree/InstanceOfTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1582
    .restart local v2    # "type":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_b

    .line 1583
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1586
    .end local v2    # "type":Lcom/sun/source/tree/Tree;
    :cond_5
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_6

    .line 1587
    move-object v2, v3

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 1588
    .local v2, "nc":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    iget-object v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_b

    .line 1589
    iget-object v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v4, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1592
    .end local v2    # "nc":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    :cond_6
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_7

    .line 1595
    goto :goto_2

    .line 1596
    :cond_7
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_8

    .line 1597
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v2}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1598
    .local v2, "type":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_b

    .line 1599
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1602
    .end local v2    # "type":Lcom/sun/source/tree/Tree;
    :cond_8
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_9

    .line 1603
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v2}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1604
    goto :goto_2

    .line 1607
    :cond_9
    instance-of v4, v3, Lcom/sun/source/tree/ExpressionTree;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    move-object v1, v4

    .line 1609
    .end local v3    # "n":Lcom/sun/source/tree/Tree;
    goto/16 :goto_0

    .line 1612
    :cond_b
    :goto_2
    sget-boolean v2, Lannotator/Main;->temporaryDebug:Z

    if-eqz v2, :cond_c

    .line 1613
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 1614
    .local v2, "leaf":Lcom/sun/source/tree/Tree;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    filled-new-array {p1, p2, v4, v2, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "alreadyPresent(%s, %s)%n  leaf (%s) = %s%n  => %s%n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1617
    .end local v2    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_c
    if-eqz v0, :cond_f

    .line 1618
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/AnnotationTree;

    .line 1626
    .local v3, "at":Lcom/sun/source/tree/AnnotationTree;
    invoke-interface {v3}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1628
    .local v4, "ann":Ljava/lang/String;
    invoke-virtual {p2}, Lannotator/find/Insertion;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1629
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Lannotator/Main;->removeArgs(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v6

    iget-object v6, v6, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1630
    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1631
    .local v6, "iann":Ljava/lang/String;
    invoke-static {v6}, Lannotator/find/Insertion;->removePackage(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v7

    iget-object v7, v7, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1633
    .local v7, "iannNoPackage":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    .line 1637
    .end local v3    # "at":Lcom/sun/source/tree/AnnotationTree;
    .end local v4    # "ann":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "iann":Ljava/lang/String;
    .end local v7    # "iannNoPackage":Ljava/lang/String;
    :cond_d
    goto :goto_3

    .line 1634
    .restart local v3    # "at":Lcom/sun/source/tree/AnnotationTree;
    .restart local v4    # "ann":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "iann":Ljava/lang/String;
    .restart local v7    # "iannNoPackage":Ljava/lang/String;
    :cond_e
    :goto_4
    sget-object v2, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v8, "Already present, not reinserting: %s%n"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    const/4 v2, 0x1

    return v2

    .line 1639
    .end local v3    # "at":Lcom/sun/source/tree/AnnotationTree;
    .end local v4    # "ann":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "iann":Ljava/lang/String;
    .end local v7    # "iannNoPackage":Ljava/lang/String;
    :cond_f
    const/4 v2, 0x0

    return v2
.end method

.method private astRecord(Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 247
    iget-object v0, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {v0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "index":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTRecord;

    return-object v1
.end method

.method private findMethodName(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I
    .locals 18
    .param p1, "node"    # Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1518
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\\b"

    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1519
    .local v3, "sym":Ljava/lang/String;
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    .line 1521
    .local v5, "mods":Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    iget-object v6, v2, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    .line 1522
    .local v6, "body":Lcom/sun/tools/javac/tree/JCTree$JCBlock;
    iget-wide v7, v5, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v9, 0x1000000000L

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    return v8

    .line 1523
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getStartPosition()I

    move-result v7

    .line 1524
    .local v7, "nodeStart":I
    iget-object v9, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v2, v9}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v9

    .line 1525
    .local v9, "nodeEnd":I
    sub-int v10, v9, v7

    .line 1526
    .local v10, "nodeLength":I
    iget-object v11, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v11, v11, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v5, v11}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v11

    .line 1527
    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->getStartPosition()I

    move-result v12

    sub-int/2addr v11, v12

    .line 1528
    .local v11, "modsLength":I
    if-nez v6, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    iget-object v13, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v13, v13, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    .line 1529
    invoke-virtual {v6, v13}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v13

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->getStartPosition()I

    move-result v14

    sub-int/2addr v13, v14

    :goto_0
    nop

    .line 1530
    .local v13, "bodyLength":I
    add-int v14, v7, v11

    .line 1531
    .local v14, "start":I
    add-int v15, v7, v10

    sub-int/2addr v15, v13

    .line 1532
    .local v15, "end":I
    const/16 v8, 0x3e

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1533
    .local v8, "angle":I
    if-ltz v8, :cond_2

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1536
    :cond_2
    :try_start_0
    iget-object v12, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v12}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v12

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1537
    .local v1, "s":Ljava/lang/CharSequence;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "regex":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1539
    .local v2, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12, v14, v15}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1540
    .local v12, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/16 v16, -0x1

    :goto_1
    return v16

    .line 1541
    .end local v0    # "regex":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/CharSequence;
    .end local v2    # "pat":Ljava/util/regex/Pattern;
    .end local v12    # "mat":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFirstInstanceAfter(CI)I
    .locals 2
    .param p1, "c"    # C
    .param p2, "i"    # I

    .line 178
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v0

    return v0
.end method

.method private getNthInstanceInRange(CIII)I
    .locals 10
    .param p1, "c"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "n"    # I

    .line 195
    if-ltz p3, :cond_5

    .line 198
    if-ltz p4, :cond_4

    .line 203
    :try_start_0
    iget-object v0, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, "s":Ljava/lang/CharSequence;
    move v2, p4

    .line 205
    .local v2, "count":I
    const/4 v3, -0x1

    .line 206
    .local v3, "pos":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 207
    .local v4, "stop":I
    const/16 v5, 0x2f

    if-ne p1, v5, :cond_0

    const-string v5, "/(?=[^*/])"

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "cQuoted":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(?:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lannotator/find/TreeFinder;->otherThan(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")*+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "regex":Ljava/lang/String;
    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 210
    .local v7, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8, p2, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 214
    .local v8, "m":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v9, -0x1

    .line 216
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1

    .line 219
    :cond_2
    if-lez v2, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 220
    .end local v0    # "s":Ljava/lang/CharSequence;
    .end local v2    # "count":I
    .end local v3    # "pos":I
    .end local v4    # "stop":I
    .end local v5    # "cQuoted":Ljava/lang/String;
    .end local v6    # "regex":Ljava/lang/String;
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative end position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private implicitClassBoundPosition(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lannotator/find/Insertion;)Ljava/lang/Integer;
    .locals 10
    .param p1, "cd"    # Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .param p2, "i"    # Lannotator/find/Insertion;

    .line 1483
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1484
    invoke-virtual {p2}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v2, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 1487
    :cond_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getModifiers()Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    .line 1488
    .local v0, "mods":Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1501
    :cond_1
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 1502
    .local v1, "param":Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    iget-object v3, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v3

    .line 1503
    .local v3, "start":I
    const/16 v5, 0x3e

    invoke-direct {p0, v5, v3}, Lannotator/find/TreeFinder;->getFirstInstanceAfter(CI)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "pos":Ljava/lang/Integer;
    goto :goto_1

    .line 1490
    .end local v1    # "param":Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    .end local v3    # "start":I
    .end local v5    # "pos":Ljava/lang/Integer;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getStartPosition()I

    move-result v3

    .line 1491
    .restart local v3    # "start":I
    iget-object v5, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    .line 1492
    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v5

    add-int/2addr v5, v4

    .line 1491
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1493
    .local v5, "offset":I
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->toString()Ljava/lang/String;

    move-result-object v6

    sub-int v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1494
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(?:\\s|//.*$|/\\*[^*]*+\\*++(?:[^*/][^*]*+\\*++)*+/)*+class(?:\\s|//.*$|/\\*[^*]*+\\*++(?:[^*/][^*]*+\\*++)*+/)++"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1496
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\b"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1494
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1497
    .local v7, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1498
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 1499
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/2addr v1, v5

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1500
    .end local v3    # "start":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .local v5, "pos":Ljava/lang/Integer;
    nop

    .line 1505
    :goto_1
    move-object v1, p2

    check-cast v1, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v1, v4}, Lannotator/find/AnnotationInsertion;->setGenerateExtends(Z)V

    .line 1506
    return-object v5

    .line 1498
    .restart local v3    # "start":I
    .local v5, "offset":I
    .restart local v6    # "s":Ljava/lang/String;
    .restart local v7    # "p":Ljava/util/regex/Pattern;
    .restart local v8    # "m":Ljava/util/regex/Matcher;
    :cond_4
    :goto_2
    return-object v1

    .line 1485
    .end local v0    # "mods":Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v5    # "offset":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "m":Ljava/util/regex/Matcher;
    :cond_5
    :goto_3
    return-object v1
.end method

.method public static largestContainingArray(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p0, "p"    # Lcom/sun/source/util/TreePath;

    .line 160
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_2

    .line 167
    return-object p0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static final otherThan(C)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # C

    .line 138
    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cEscaped":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v1    # "cEscaped":Ljava/lang/String;
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cEscaped":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v1    # "cEscaped":Ljava/lang/String;
    :sswitch_1
    const-string v1, ""

    .line 151
    .restart local v1    # "cEscaped":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[^/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'(?:(?:\\\\(?:\'|[^\']*+))|[^\\\\\'])\'|\"(?:\\\\.|[^\\\\\"])*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//.*$|/\\*[^*]*+\\*++(?:[^*/][^*]*+\\*++)*+/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/(?=[^*/])"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private parent(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 227
    invoke-virtual {p0, p1}, Lannotator/find/TreeFinder;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 228
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static reportInsertionError(Lannotator/find/Insertion;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "i"    # Lannotator/find/Insertion;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1648
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error processing insertion:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1649
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1652
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\n\t\t"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1654
    :cond_0
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    sget-object v1, Lannotator/find/TreeFinder;->stak:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/DebugWriter;->or(Lscenelib/annotations/io/DebugWriter;)Lscenelib/annotations/io/DebugWriter;

    move-result-object v0

    invoke-virtual {v0}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1657
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tRun with --print_error_stack to see the stack trace."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1659
    :goto_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\tThis insertion will be skipped."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method private wildcardLast(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)Z"
        }
    .end annotation

    .line 956
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method findPosition(Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Ljava/lang/Integer;
    .locals 19
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "i"    # Lannotator/find/Insertion;

    .line 1082
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 1086
    .local v4, "node":Lcom/sun/source/tree/Tree;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v0

    invoke-virtual {v0}, Lannotator/find/Criteria;->isOnReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v6, :cond_0

    .line 1088
    sget-object v0, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    const-string v6, "WARNING: Cannot insert a receiver parameter on a method declaration of an anonymous inner class.  This insertion will be skipped.%n    Insertion: %s%n"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    return-object v5

    .line 1097
    :cond_0
    invoke-direct/range {p0 .. p2}, Lannotator/find/TreeFinder;->alreadyPresent(Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v3, Lannotator/find/TypedInsertion;

    if-nez v0, :cond_1

    .line 1100
    return-object v5

    .line 1103
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v6, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    const-wide/16 v7, 0x0

    const-wide v9, 0x1000000000L

    const/4 v11, 0x1

    if-ne v0, v6, :cond_6

    .line 1104
    move-object v0, v3

    check-cast v0, Lannotator/find/ConstructorInsertion;

    .line 1105
    .local v0, "cons":Lannotator/find/ConstructorInsertion;
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v12, :cond_5

    .line 1106
    move-object v6, v4

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1108
    .local v6, "method":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    iget-object v12, v6, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v12, v12, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v12}, Lcom/sun/tools/javac/code/Symbol;->isAnonymous()Z

    move-result v12

    if-eqz v12, :cond_2

    return-object v5

    .line 1109
    :cond_2
    iget-object v12, v6, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v12, v12, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v12, v9

    cmp-long v12, v12, v7

    if-eqz v12, :cond_3

    .line 1110
    invoke-direct {v1, v2, v0, v6}, Lannotator/find/TreeFinder;->addConstructor(Lcom/sun/source/util/TreePath;Lannotator/find/ConstructorInsertion;Lcom/sun/source/tree/MethodTree;)V

    goto :goto_0

    .line 1112
    :cond_3
    invoke-virtual {v0, v11}, Lannotator/find/ConstructorInsertion;->setAnnotationsOnly(Z)V

    .line 1113
    invoke-virtual {v0, v11}, Lannotator/find/ConstructorInsertion;->setInserted(Z)V

    .line 1114
    invoke-virtual {v0}, Lannotator/find/ConstructorInsertion;->getReceiverInsertion()Lannotator/find/ReceiverInsertion;

    move-result-object v12

    move-object v3, v12

    .line 1115
    .end local p2    # "i":Lannotator/find/Insertion;
    .local v3, "i":Lannotator/find/Insertion;
    if-nez v3, :cond_4

    return-object v5

    .line 1117
    .end local v6    # "method":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    :cond_4
    :goto_0
    goto :goto_1

    .line 1118
    .end local v3    # "i":Lannotator/find/Insertion;
    .restart local p2    # "i":Lannotator/find/Insertion;
    :cond_5
    invoke-virtual {v0, v11}, Lannotator/find/ConstructorInsertion;->setAnnotationsOnly(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1122
    .end local v0    # "cons":Lannotator/find/ConstructorInsertion;
    .end local p2    # "i":Lannotator/find/Insertion;
    .restart local v3    # "i":Lannotator/find/Insertion;
    :cond_6
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v6, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    if-ne v0, v6, :cond_7

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v6, :cond_7

    .line 1123
    move-object v0, v3

    check-cast v0, Lannotator/find/ReceiverInsertion;

    .line 1124
    .local v0, "receiver":Lannotator/find/ReceiverInsertion;
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/MethodTree;

    .line 1125
    .local v6, "method":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v6}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v12

    .line 1127
    .local v12, "rcv":Lcom/sun/source/tree/VariableTree;
    if-nez v12, :cond_7

    .line 1128
    invoke-direct {v1, v2, v0, v6}, Lannotator/find/TreeFinder;->addReceiverType(Lcom/sun/source/util/TreePath;Lannotator/find/ReceiverInsertion;Lcom/sun/source/tree/MethodTree;)V

    .line 1132
    .end local v0    # "receiver":Lannotator/find/ReceiverInsertion;
    .end local v6    # "method":Lcom/sun/source/tree/MethodTree;
    .end local v12    # "rcv":Lcom/sun/source/tree/VariableTree;
    :cond_7
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v6, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    if-ne v0, v6, :cond_8

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v6, :cond_8

    .line 1133
    move-object v0, v3

    check-cast v0, Lannotator/find/NewInsertion;

    .line 1134
    .local v0, "neu":Lannotator/find/NewInsertion;
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/NewArrayTree;

    .line 1136
    .local v6, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "{"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1137
    invoke-direct {v1, v2, v0, v6}, Lannotator/find/TreeFinder;->addNewType(Lcom/sun/source/util/TreePath;Lannotator/find/NewInsertion;Lcom/sun/source/tree/NewArrayTree;)V

    .line 1145
    .end local v0    # "neu":Lannotator/find/NewInsertion;
    .end local v6    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    :cond_8
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1151
    .local v6, "pos":Ljava/lang/Integer;
    iget-object v12, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {v12}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v12

    .line 1152
    .local v12, "astIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/io/ASTRecord;

    .line 1153
    .local v13, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    sget-object v14, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v15, "TreeFinder.scan: node=%s%n  critera=%s%n"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 1154
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v10

    aput-object v10, v8, v11

    .line 1153
    invoke-virtual {v14, v15, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    invoke-static {v4}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1157
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/Criteria;->isOnTypeDeclarationExtendsClause()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/ClassTree;

    .line 1158
    invoke-interface {v8}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v8

    if-nez v8, :cond_9

    .line 1159
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-direct {v1, v0, v3}, Lannotator/find/TreeFinder;->implicitClassBoundPosition(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lannotator/find/Insertion;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1161
    :cond_9
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v10, :cond_d

    .line 1162
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/Criteria;->isOnReturnType()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1163
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1164
    .local v0, "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v8

    .line 1165
    .local v8, "returnType":Lcom/sun/source/tree/Tree;
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const-string v15, "type"

    invoke-virtual {v13, v10, v15}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v10

    .line 1166
    .end local v13    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .local v10, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    if-nez v8, :cond_b

    .line 1168
    invoke-direct {v1, v0}, Lannotator/find/TreeFinder;->findMethodName(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v6, v13

    .line 1169
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gez v13, :cond_a

    .line 1170
    return-object v5

    .line 1172
    :cond_a
    const-string v13, "pos = %d at constructor name: %s%n"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v9

    iget-object v9, v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1173
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v11

    .line 1172
    invoke-virtual {v14, v13, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v13, v10

    goto :goto_2

    .line 1175
    :cond_b
    iget-object v13, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v13, v8, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1176
    .local v13, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v15, v13, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v15, Lscenelib/annotations/io/ASTRecord;

    move-object v10, v15

    .line 1177
    iget-object v15, v13, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    move-object v6, v15

    .line 1178
    invoke-virtual {v1, v4}, Lannotator/find/TreeFinder;->handled(Lcom/sun/source/tree/Tree;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1179
    const-string v15, "pos = %d at return type node: %s%n"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v9

    .line 1180
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v11

    .line 1179
    invoke-virtual {v14, v15, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v13, v10

    .line 1182
    .end local v0    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v8    # "returnType":Lcom/sun/source/tree/Tree;
    .end local v10    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .local v13, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    :goto_2
    goto/16 :goto_7

    .line 1178
    .restart local v0    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .restart local v8    # "returnType":Lcom/sun/source/tree/Tree;
    .restart local v10    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .local v13, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    :cond_c
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "path":Lcom/sun/source/util/TreePath;
    throw v7

    .line 1182
    .end local v0    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v8    # "returnType":Lcom/sun/source/tree/Tree;
    .end local v10    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .local v13, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .restart local p1    # "path":Lcom/sun/source/util/TreePath;
    :cond_d
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v10, :cond_e

    .line 1183
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/Criteria;->onBoundZero()Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    .line 1184
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    .line 1186
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    instance-of v8, v4, Lcom/sun/source/tree/WildcardTree;

    if-eqz v8, :cond_13

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/WildcardTree;

    .line 1188
    invoke-interface {v8}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v8

    if-nez v8, :cond_13

    .line 1189
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    .line 1190
    invoke-virtual {v8}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v8

    .line 1189
    invoke-direct {v1, v8}, Lannotator/find/TreeFinder;->wildcardLast(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1191
    :cond_f
    iget-object v7, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v7, v4, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1192
    .local v7, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v8, v7, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v8, Lscenelib/annotations/io/ASTRecord;

    move-object v13, v8

    .line 1193
    iget-object v8, v7, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    move-object v6, v8

    .line 1195
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v8

    sget-object v10, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v8, v10, :cond_12

    .line 1196
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v10, :cond_10

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    .line 1197
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    .line 1198
    move-object v0, v4

    check-cast v0, Lcom/sun/source/tree/TypeParameterTree;

    invoke-interface {v0}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 1199
    .local v0, "bound":Lcom/sun/source/tree/Tree;
    move-object v8, v0

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v6, v8

    .line 1200
    move-object v8, v3

    check-cast v8, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v8, v11}, Lannotator/find/AnnotationInsertion;->setGenerateBound(Z)V

    .line 1201
    .end local v0    # "bound":Lcom/sun/source/tree/Tree;
    goto :goto_4

    .line 1202
    :cond_10
    invoke-direct {v1, v4}, Lannotator/find/TreeFinder;->parent(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v9, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v8

    .line 1203
    .local v8, "limit":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v11

    const/16 v10, 0x2c

    invoke-direct {v1, v10, v9, v8, v11}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1204
    .local v9, "nextpos1":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v11

    const/16 v14, 0x3e

    invoke-direct {v1, v14, v10, v8, v11}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1205
    .local v10, "nextpos2":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v0, :cond_11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v0, v14, :cond_11

    move-object v0, v9

    goto :goto_3

    :cond_11
    move-object v0, v10

    .line 1206
    .end local v6    # "pos":Ljava/lang/Integer;
    .local v0, "pos":Ljava/lang/Integer;
    :goto_3
    move-object v6, v3

    check-cast v6, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v6, v11}, Lannotator/find/AnnotationInsertion;->setGenerateExtends(Z)V

    move-object v6, v0

    .line 1209
    .end local v0    # "pos":Ljava/lang/Integer;
    .end local v7    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    .end local v8    # "limit":I
    .end local v9    # "nextpos1":Ljava/lang/Integer;
    .end local v10    # "nextpos2":Ljava/lang/Integer;
    .restart local v6    # "pos":Ljava/lang/Integer;
    :cond_12
    :goto_4
    goto/16 :goto_7

    :cond_13
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v8, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    if-ne v0, v8, :cond_16

    .line 1210
    move-object v0, v3

    check-cast v0, Lannotator/find/CastInsertion;

    invoke-virtual {v0}, Lannotator/find/CastInsertion;->getType()Lscenelib/type/Type;

    move-result-object v0

    .line 1211
    .local v0, "t":Lscenelib/type/Type;
    move-object v7, v4

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree;

    .line 1212
    .local v7, "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {v7}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v6, v8

    .line 1213
    invoke-virtual {v0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v8

    sget-object v9, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v8, v9, :cond_15

    .line 1214
    move-object v8, v0

    check-cast v8, Lscenelib/type/DeclaredType;

    .line 1215
    .local v8, "dt":Lscenelib/type/DeclaredType;
    invoke-virtual {v8}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1216
    iget-object v9, v7, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    instance-of v9, v9, Ljavax/lang/model/type/NullType;

    if-eqz v9, :cond_14

    const-string v9, "Object"

    goto :goto_5

    :cond_14
    iget-object v9, v7, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 1217
    invoke-virtual {v9}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1216
    :goto_5
    invoke-virtual {v8, v9}, Lscenelib/type/DeclaredType;->setName(Ljava/lang/String;)V

    .line 1220
    .end local v0    # "t":Lscenelib/type/Type;
    .end local v7    # "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    .end local v8    # "dt":Lscenelib/type/DeclaredType;
    :cond_15
    goto/16 :goto_7

    :cond_16
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v8, Lannotator/find/Insertion$Kind;->CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

    if-ne v0, v8, :cond_17

    .line 1221
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1222
    .local v0, "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    iget-object v7, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v7, v7, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v7

    .line 1223
    .end local v0    # "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    goto/16 :goto_7

    .line 1224
    :cond_17
    const/4 v0, 0x1

    .line 1225
    .local v0, "typeScan":Z
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v10, :cond_18

    .line 1227
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/Criteria;->isOnReceiver()Z

    move-result v8

    move v0, v8

    goto :goto_6

    .line 1228
    :cond_18
    invoke-static {v4}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1229
    invoke-virtual {v3}, Lannotator/find/Insertion;->isSeparateLine()Z

    move-result v8

    xor-int/2addr v8, v11

    move v0, v8

    .line 1231
    :cond_19
    :goto_6
    if-eqz v0, :cond_1b

    .line 1233
    const-string v8, "Calling tpf.scan(%s: %s, %s)%n"

    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v9

    aput-object v4, v15, v11

    aput-object v3, v15, v7

    invoke-virtual {v14, v8, v15}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    iget-object v8, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v8, v4, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1235
    .local v8, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v15, v8, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v15, Lscenelib/annotations/io/ASTRecord;

    move-object v13, v15

    .line 1236
    iget-object v15, v8, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    move-object v6, v15

    .line 1237
    invoke-virtual {v1, v4}, Lannotator/find/TreeFinder;->handled(Lcom/sun/source/tree/Tree;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1238
    const-string v15, "pos = %d (insertRecord=%s) at type: %s (%s)%n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v9

    aput-object v13, v5, v11

    .line 1239
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v10

    .line 1238
    invoke-virtual {v14, v15, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    .end local v8    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    goto :goto_7

    .line 1237
    .restart local v8    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    :cond_1a
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "path":Lcom/sun/source/util/TreePath;
    throw v5

    .line 1240
    .end local v8    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .restart local p1    # "path":Lcom/sun/source/util/TreePath;
    :cond_1b
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v8, :cond_1c

    .line 1241
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v5

    sget-object v8, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    if-ne v5, v8, :cond_1c

    move-object v5, v4

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v9, v5, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v17, 0x1000000000L

    and-long v8, v9, v17

    const-wide/16 v15, 0x0

    cmp-long v5, v8, v15

    if-eqz v5, :cond_1c

    .line 1243
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 1244
    .local v5, "parent":Lcom/sun/source/tree/Tree;
    move-object v7, v5

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v8, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v7

    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v7

    .line 1245
    const/4 v13, 0x0

    .line 1246
    .end local v5    # "parent":Lcom/sun/source/tree/Tree;
    goto :goto_7

    .line 1248
    :cond_1c
    iget-object v5, v1, Lannotator/find/TreeFinder;->dpf:Lannotator/find/TreeFinder$DeclarationPositionFinder;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Lannotator/find/TreeFinder$DeclarationPositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v6, v5

    .line 1249
    invoke-direct {v1, v4}, Lannotator/find/TreeFinder;->astRecord(Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    move-object v13, v5

    .line 1250
    const-string v5, "pos = %s at declaration: %s%n"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v14, v5, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    .end local v0    # "typeScan":Z
    :goto_7
    if-eqz v6, :cond_1e

    .line 1255
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1d

    .line 1257
    iget-object v0, v1, Lannotator/find/TreeFinder;->astInsertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-interface {v0, v13, v3}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8

    .line 1255
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v5, "pos: %s%nnode: %s%ninsertion: %s%n"

    filled-new-array {v6, v4, v3}, [Ljava/lang/Object;

    move-result-object v7

    .line 1256
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "path":Lcom/sun/source/util/TreePath;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .restart local p1    # "path":Lcom/sun/source/util/TreePath;
    :cond_1e
    :goto_8
    return-object v6

    .line 1260
    .end local v6    # "pos":Ljava/lang/Integer;
    .end local v12    # "astIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    .end local v13    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    :catchall_0
    move-exception v0

    goto :goto_9

    .end local v3    # "i":Lannotator/find/Insertion;
    .restart local p2    # "i":Lannotator/find/Insertion;
    :catchall_1
    move-exception v0

    .line 1261
    .end local p2    # "i":Lannotator/find/Insertion;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v3    # "i":Lannotator/find/Insertion;
    :goto_9
    invoke-static {v3, v0}, Lannotator/find/TreeFinder;->reportInsertionError(Lannotator/find/Insertion;Ljava/lang/Throwable;)V

    .line 1262
    const/4 v5, 0x0

    return-object v5
.end method

.method findPositionByASTPath(Lscenelib/annotations/io/ASTPath;Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Ljava/lang/Integer;
    .locals 20
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;
    .param p3, "i"    # Lannotator/find/Insertion;

    .line 1270
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "type"

    invoke-virtual/range {p2 .. p2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 1272
    .local v4, "node":Lcom/sun/source/tree/Tree;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v6

    .line 1275
    .local v6, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v9, "parameter"

    const/4 v10, -0x1

    if-ne v7, v8, :cond_0

    .line 1276
    :try_start_1
    invoke-virtual {v6, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1277
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 1278
    invoke-virtual/range {p2 .. p2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_0

    .line 1280
    sget-object v0, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    const-string v7, "WARNING: Cannot insert a receiver parameter on a method declaration of an anonymous inner class.  This insertion will be skipped.%n    Insertion: %s%n"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    return-object v5

    .line 1286
    :cond_0
    invoke-direct {v1, v2, v3}, Lannotator/find/TreeFinder;->alreadyPresent(Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1289
    return-object v5

    .line 1292
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v7

    sget-object v8, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    const-wide/16 v11, 0x0

    const-wide v13, 0x1000000000L

    const/4 v15, 0x1

    if-ne v7, v8, :cond_5

    .line 1293
    move-object v7, v3

    check-cast v7, Lannotator/find/ConstructorInsertion;

    .line 1295
    .local v7, "cons":Lannotator/find/ConstructorInsertion;
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v10, :cond_4

    .line 1296
    move-object v8, v4

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1297
    .local v8, "method":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    iget-object v10, v8, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-object/from16 v16, v6

    .end local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .local v16, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    iget-wide v5, v10, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v5, v13

    cmp-long v5, v5, v11

    if-eqz v5, :cond_2

    .line 1298
    invoke-direct {v1, v2, v7, v8}, Lannotator/find/TreeFinder;->addConstructor(Lcom/sun/source/util/TreePath;Lannotator/find/ConstructorInsertion;Lcom/sun/source/tree/MethodTree;)V

    goto :goto_0

    .line 1300
    :cond_2
    invoke-virtual {v7, v15}, Lannotator/find/ConstructorInsertion;->setAnnotationsOnly(Z)V

    .line 1301
    invoke-virtual {v7, v15}, Lannotator/find/ConstructorInsertion;->setInserted(Z)V

    .line 1302
    invoke-virtual {v7}, Lannotator/find/ConstructorInsertion;->getReceiverInsertion()Lannotator/find/ReceiverInsertion;

    move-result-object v5

    move-object v3, v5

    .line 1303
    .end local p3    # "i":Lannotator/find/Insertion;
    .local v3, "i":Lannotator/find/Insertion;
    if-nez v3, :cond_3

    const/4 v5, 0x0

    return-object v5

    .line 1305
    .end local v8    # "method":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    :cond_3
    :goto_0
    goto :goto_1

    .line 1306
    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local p3    # "i":Lannotator/find/Insertion;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v7, v15}, Lannotator/find/ConstructorInsertion;->setAnnotationsOnly(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1292
    .end local v7    # "cons":Lannotator/find/ConstructorInsertion;
    .end local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_5
    move-object/from16 v16, v6

    .line 1310
    .end local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local p3    # "i":Lannotator/find/Insertion;
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v5

    sget-object v6, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    if-ne v5, v6, :cond_6

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_6

    .line 1311
    move-object v5, v3

    check-cast v5, Lannotator/find/ReceiverInsertion;

    .line 1312
    .local v5, "receiver":Lannotator/find/ReceiverInsertion;
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/MethodTree;

    .line 1314
    .local v6, "method":Lcom/sun/source/tree/MethodTree;
    invoke-interface {v6}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1315
    invoke-direct {v1, v2, v5, v6}, Lannotator/find/TreeFinder;->addReceiverType(Lcom/sun/source/util/TreePath;Lannotator/find/ReceiverInsertion;Lcom/sun/source/tree/MethodTree;)V

    .line 1319
    .end local v5    # "receiver":Lannotator/find/ReceiverInsertion;
    .end local v6    # "method":Lcom/sun/source/tree/MethodTree;
    :cond_6
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v5

    sget-object v6, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    if-ne v5, v6, :cond_7

    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_7

    .line 1320
    move-object v5, v3

    check-cast v5, Lannotator/find/NewInsertion;

    .line 1321
    .local v5, "neu":Lannotator/find/NewInsertion;
    move-object v6, v4

    check-cast v6, Lcom/sun/source/tree/NewArrayTree;

    .line 1323
    .local v6, "newArray":Lcom/sun/source/tree/NewArrayTree;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1324
    invoke-direct {v1, v2, v5, v6}, Lannotator/find/TreeFinder;->addNewType(Lcom/sun/source/util/TreePath;Lannotator/find/NewInsertion;Lcom/sun/source/tree/NewArrayTree;)V

    .line 1332
    .end local v5    # "neu":Lannotator/find/NewInsertion;
    .end local v6    # "newArray":Lcom/sun/source/tree/NewArrayTree;
    :cond_7
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, v6

    .line 1338
    .local v5, "pos":Ljava/lang/Integer;
    iget-object v6, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {v6}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v6

    .line 1339
    .local v6, "astIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/io/ASTRecord;

    .line 1340
    .local v7, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    sget-object v8, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v10, "TreeFinder.scan: node=%s%n  criteria=%s%n"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    .line 1341
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v14

    aput-object v14, v12, v15

    .line 1340
    invoke-virtual {v8, v10, v12}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    invoke-static {v4}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "bound"

    if-eqz v10, :cond_8

    .line 1344
    move-object/from16 v10, v16

    .end local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .local v10, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :try_start_3
    invoke-virtual {v10, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1345
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v14

    if-gez v14, :cond_9

    move-object v14, v4

    check-cast v14, Lcom/sun/source/tree/ClassTree;

    .line 1346
    invoke-interface {v14}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v14

    if-nez v14, :cond_9

    .line 1347
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    invoke-direct {v1, v0, v3}, Lannotator/find/TreeFinder;->implicitClassBoundPosition(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;Lannotator/find/Insertion;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1343
    .end local v10    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_8
    move-object/from16 v10, v16

    .line 1349
    .end local v16    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v10    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_9
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v14

    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v14, v13, :cond_b

    .line 1350
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v13

    const-string v14, "<init>()V"

    invoke-virtual {v13, v14}, Lannotator/find/Criteria;->isOnMethod(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1351
    invoke-virtual {v10, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1352
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v13

    if-gez v13, :cond_b

    .line 1353
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v8, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    if-eq v0, v8, :cond_a

    const/4 v8, 0x0

    return-object v8

    .line 1354
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1355
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    const/4 v11, -0x1

    invoke-virtual {v7, v8, v9, v11}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v8

    move-object v7, v8

    .line 1356
    move-object v8, v0

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v9, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v8

    sub-int/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    .line 1357
    .end local v5    # "pos":Ljava/lang/Integer;
    .local v0, "pos":Ljava/lang/Integer;
    goto/16 :goto_7

    .end local v0    # "pos":Ljava/lang/Integer;
    .restart local v5    # "pos":Ljava/lang/Integer;
    :cond_b
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v13, :cond_f

    .line 1358
    invoke-virtual {v10, v0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1359
    move-object v9, v4

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 1360
    .local v9, "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v12

    .line 1361
    .local v12, "returnType":Lcom/sun/source/tree/Tree;
    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v7, v13, v0}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    .line 1362
    .end local v7    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .local v0, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    if-nez v12, :cond_d

    .line 1364
    invoke-direct {v1, v9}, Lannotator/find/TreeFinder;->findMethodName(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v7

    .line 1365
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_c

    .line 1366
    const/4 v7, 0x0

    return-object v7

    .line 1368
    :cond_c
    const-string v7, "pos = %d at constructor name: %s%n"

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v11, v13

    iget-object v13, v9, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1369
    invoke-virtual {v13}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v15

    .line 1368
    invoke-virtual {v8, v7, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, v5

    goto :goto_2

    .line 1371
    :cond_d
    iget-object v7, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v7, v12, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1372
    .local v7, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v13, v7, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v13, Lscenelib/annotations/io/ASTRecord;

    move-object v0, v13

    .line 1373
    iget-object v13, v7, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    move-object v5, v13

    .line 1374
    invoke-virtual {v1, v4}, Lannotator/find/TreeFinder;->handled(Lcom/sun/source/tree/Tree;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1375
    const-string v13, "pos = %d at return type node: %s%n"

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v11, v14

    .line 1376
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v11, v15

    .line 1375
    invoke-virtual {v8, v13, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, v5

    .line 1378
    .end local v5    # "pos":Ljava/lang/Integer;
    .end local v9    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v12    # "returnType":Lcom/sun/source/tree/Tree;
    .local v0, "pos":Ljava/lang/Integer;
    .local v7, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    :goto_2
    goto/16 :goto_7

    .line 1374
    .local v0, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .restart local v5    # "pos":Ljava/lang/Integer;
    .local v7, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    .restart local v9    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .restart local v12    # "returnType":Lcom/sun/source/tree/Tree;
    :cond_e
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local p2    # "path":Lcom/sun/source/util/TreePath;
    throw v8

    .line 1378
    .end local v0    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .end local v9    # "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v12    # "returnType":Lcom/sun/source/tree/Tree;
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .local v7, "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .restart local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p2    # "path":Lcom/sun/source/util/TreePath;
    :cond_f
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v9, :cond_10

    .line 1379
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v9, :cond_10

    move-object v0, v4

    check-cast v0, Lcom/sun/source/tree/TypeParameterTree;

    .line 1380
    invoke-interface {v0}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    move-object v0, v4

    check-cast v0, Lcom/sun/source/tree/TypeParameterTree;

    .line 1382
    invoke-interface {v0}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->isInterface()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1383
    :cond_10
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1384
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v9, :cond_11

    .line 1385
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/ASTPath;->isWildcard(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    nop

    .line 1386
    invoke-virtual {v10, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1387
    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->hasArgument()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v0

    if-nez v0, :cond_16

    .line 1388
    :cond_12
    iget-object v0, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v0, v4, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1389
    .local v0, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v8, v0, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v8, Lscenelib/annotations/io/ASTRecord;

    move-object v7, v8

    .line 1390
    iget-object v8, v0, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    move-object v5, v8

    .line 1392
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v8

    sget-object v9, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v8, v9, :cond_15

    .line 1393
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_13

    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    .line 1394
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1395
    move-object v8, v4

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/Tree;

    .line 1396
    .local v8, "bound":Lcom/sun/source/tree/Tree;
    move-object v9, v8

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, v9

    .line 1397
    move-object v9, v3

    check-cast v9, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v9, v15}, Lannotator/find/AnnotationInsertion;->setGenerateBound(Z)V

    .line 1398
    .end local v8    # "bound":Lcom/sun/source/tree/Tree;
    move-object v0, v5

    goto :goto_4

    .line 1399
    :cond_13
    invoke-direct {v1, v4}, Lannotator/find/TreeFinder;->parent(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v9, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v8, v9}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v8

    .line 1400
    .local v8, "limit":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v15

    const/16 v11, 0x2c

    invoke-direct {v1, v11, v9, v8, v15}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1401
    .local v9, "nextpos1":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v15

    const/16 v12, 0x3e

    invoke-direct {v1, v12, v11, v8, v15}, Lannotator/find/TreeFinder;->getNthInstanceInRange(CIII)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1402
    .local v11, "nextpos2":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v12, v13, :cond_14

    move-object v12, v9

    goto :goto_3

    :cond_14
    move-object v12, v11

    :goto_3
    move-object v5, v12

    .line 1403
    move-object v12, v3

    check-cast v12, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v12, v15}, Lannotator/find/AnnotationInsertion;->setGenerateExtends(Z)V

    move-object v0, v5

    goto :goto_4

    .line 1392
    .end local v8    # "limit":I
    .end local v9    # "nextpos1":Ljava/lang/Integer;
    .end local v11    # "nextpos2":Ljava/lang/Integer;
    :cond_15
    move-object v0, v5

    .line 1406
    .end local v5    # "pos":Ljava/lang/Integer;
    .local v0, "pos":Ljava/lang/Integer;
    :goto_4
    goto/16 :goto_7

    .end local v0    # "pos":Ljava/lang/Integer;
    .restart local v5    # "pos":Ljava/lang/Integer;
    :cond_16
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v9, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v12, "initializer"

    if-ne v0, v9, :cond_1b

    .line 1407
    :try_start_4
    move-object v0, v3

    check-cast v0, Lannotator/find/CastInsertion;

    invoke-virtual {v0}, Lannotator/find/CastInsertion;->getType()Lscenelib/type/Type;

    move-result-object v0

    .line 1408
    .local v0, "t":Lscenelib/type/Type;
    move-object v8, v4

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    .line 1409
    .local v8, "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v11, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v11, :cond_18

    invoke-virtual/range {p1 .. p1}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1410
    invoke-virtual/range {p1 .. p1}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v9

    invoke-virtual {v9, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1411
    move-object v9, v4

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v9}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    move-object v4, v9

    .line 1412
    if-nez v4, :cond_17

    const/4 v9, 0x0

    return-object v9

    .line 1413
    :cond_17
    move-object v9, v4

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree;

    move-object v8, v9

    .line 1415
    :cond_18
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, v9

    .line 1416
    invoke-virtual {v0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v9

    sget-object v11, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v9, v11, :cond_1a

    .line 1417
    move-object v9, v0

    check-cast v9, Lscenelib/type/DeclaredType;

    .line 1418
    .local v9, "dt":Lscenelib/type/DeclaredType;
    invoke-virtual {v9}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1419
    iget-object v11, v8, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    instance-of v11, v11, Ljavax/lang/model/type/NullType;

    if-eqz v11, :cond_19

    .line 1420
    const-string v11, "Object"

    invoke-virtual {v9, v11}, Lscenelib/type/DeclaredType;->setName(Ljava/lang/String;)V

    goto :goto_5

    .line 1422
    :cond_19
    iget-object v11, v8, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v11}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v11

    move-object v0, v11

    .line 1423
    invoke-virtual {v9}, Lscenelib/type/DeclaredType;->getAnnotations()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lscenelib/type/Type;->setAnnotations(Ljava/util/List;)V

    .line 1424
    move-object v11, v3

    check-cast v11, Lannotator/find/CastInsertion;

    invoke-virtual {v11, v0}, Lannotator/find/CastInsertion;->setType(Lscenelib/type/Type;)V

    .line 1428
    .end local v0    # "t":Lscenelib/type/Type;
    .end local v8    # "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    .end local v9    # "dt":Lscenelib/type/DeclaredType;
    :cond_1a
    :goto_5
    move-object v0, v5

    goto/16 :goto_7

    :cond_1b
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v9, Lannotator/find/Insertion$Kind;->CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

    if-ne v0, v9, :cond_1e

    .line 1429
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1430
    .local v0, "jcTree":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    sget-object v9, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v8, v9, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 1431
    invoke-virtual/range {p1 .. p1}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v8

    invoke-virtual {v8, v12}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1432
    move-object v8, v4

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    move-object v4, v8

    .line 1433
    if-nez v4, :cond_1c

    const/4 v8, 0x0

    return-object v8

    .line 1434
    :cond_1c
    move-object v8, v4

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree;

    move-object v0, v8

    .line 1436
    :cond_1d
    iget-object v8, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v8, v8, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v8}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v8

    .line 1437
    .end local v5    # "pos":Ljava/lang/Integer;
    .local v0, "pos":Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1438
    .end local v0    # "pos":Ljava/lang/Integer;
    .restart local v5    # "pos":Ljava/lang/Integer;
    :cond_1e
    const/4 v0, 0x1

    .line 1439
    .local v0, "typeScan":Z
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v12, :cond_1f

    .line 1441
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v9

    invoke-static {v9}, Lannotator/specification/IndexFileSpecification;->isOnReceiver(Lannotator/find/Criteria;)Z

    move-result v9

    move v0, v9

    goto :goto_6

    .line 1442
    :cond_1f
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v12, :cond_20

    .line 1443
    invoke-virtual {v3}, Lannotator/find/Insertion;->isSeparateLine()Z

    move-result v9

    xor-int/2addr v9, v15

    move v0, v9

    .line 1445
    :cond_20
    :goto_6
    if-eqz v0, :cond_22

    .line 1447
    const-string v9, "Calling tpf.scan(%s: %s)%n"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    aput-object v4, v12, v15

    invoke-virtual {v8, v9, v12}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1448
    iget-object v9, v1, Lannotator/find/TreeFinder;->tpf:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-virtual {v9, v4, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 1449
    .local v9, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    iget-object v12, v9, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v12, Lscenelib/annotations/io/ASTRecord;

    move-object v7, v12

    .line 1450
    iget-object v12, v9, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    move-object v5, v12

    .line 1451
    invoke-virtual {v1, v4}, Lannotator/find/TreeFinder;->handled(Lcom/sun/source/tree/Tree;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1452
    const-string v12, "pos = %d at type: %s (%s)%n"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    .line 1453
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v15

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v11

    .line 1452
    invoke-virtual {v8, v12, v13}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    .end local v9    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    move-object v0, v5

    goto :goto_7

    .line 1451
    .restart local v9    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    :cond_21
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local p2    # "path":Lcom/sun/source/util/TreePath;
    throw v8

    .line 1454
    .end local v9    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTRecord;Ljava/lang/Integer;>;"
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .restart local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p2    # "path":Lcom/sun/source/util/TreePath;
    :cond_22
    invoke-interface {v4}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v12, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v12, :cond_23

    .line 1455
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v9

    sget-object v12, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    if-ne v9, v12, :cond_23

    move-object v9, v4

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v9, v9, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v12, v9, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v18, 0x1000000000L

    and-long v12, v12, v18

    const-wide/16 v16, 0x0

    cmp-long v9, v12, v16

    if-eqz v9, :cond_23

    .line 1457
    invoke-virtual/range {p2 .. p2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v8

    .line 1458
    .local v8, "parent":Lcom/sun/source/tree/Tree;
    move-object v9, v8

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v11, v1, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v11, v11, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v9, v11}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v9

    sub-int/2addr v9, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, v9

    .line 1459
    const/4 v7, 0x0

    .line 1460
    .end local v8    # "parent":Lcom/sun/source/tree/Tree;
    move-object v0, v5

    goto :goto_7

    .line 1462
    :cond_23
    iget-object v9, v1, Lannotator/find/TreeFinder;->dpf:Lannotator/find/TreeFinder$DeclarationPositionFinder;

    const/4 v12, 0x0

    invoke-virtual {v9, v4, v12}, Lannotator/find/TreeFinder$DeclarationPositionFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v5, v9

    .line 1463
    invoke-direct {v1, v4}, Lannotator/find/TreeFinder;->astRecord(Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v9

    move-object v7, v9

    .line 1464
    if-eqz v5, :cond_26

    .line 1465
    const-string v9, "pos = %d at declaration: %s%n"

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v15

    invoke-virtual {v8, v9, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v5

    .line 1469
    .end local v5    # "pos":Ljava/lang/Integer;
    .local v0, "pos":Ljava/lang/Integer;
    :goto_7
    if-eqz v0, :cond_25

    .line 1470
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_24

    .line 1472
    iget-object v5, v1, Lannotator/find/TreeFinder;->astInsertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-interface {v5, v7, v3}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8

    .line 1470
    :cond_24
    new-instance v5, Ljava/lang/AssertionError;

    const-string v8, "pos: %s%nnode: %s%ninsertion: %s%n"

    filled-new-array {v0, v4, v3}, [Ljava/lang/Object;

    move-result-object v9

    .line 1471
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local p2    # "path":Lcom/sun/source/util/TreePath;
    throw v5

    .line 1474
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .restart local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p2    # "path":Lcom/sun/source/util/TreePath;
    :cond_25
    :goto_8
    return-object v0

    .line 1464
    .local v0, "typeScan":Z
    .restart local v5    # "pos":Ljava/lang/Integer;
    :cond_26
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "node":Lcom/sun/source/tree/Tree;
    .end local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local p2    # "path":Lcom/sun/source/util/TreePath;
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1475
    .end local v0    # "typeScan":Z
    .end local v5    # "pos":Ljava/lang/Integer;
    .end local v6    # "astIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    .end local v7    # "insertRecord":Lscenelib/annotations/io/ASTRecord;
    .end local v10    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v3    # "i":Lannotator/find/Insertion;
    .restart local v4    # "node":Lcom/sun/source/tree/Tree;
    .restart local p1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p2    # "path":Lcom/sun/source/util/TreePath;
    :catchall_0
    move-exception v0

    goto :goto_9

    .end local v3    # "i":Lannotator/find/Insertion;
    .restart local p3    # "i":Lannotator/find/Insertion;
    :catchall_1
    move-exception v0

    .line 1476
    .end local p3    # "i":Lannotator/find/Insertion;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v3    # "i":Lannotator/find/Insertion;
    :goto_9
    invoke-static {v3, v0}, Lannotator/find/TreeFinder;->reportInsertionError(Lannotator/find/Insertion;Ljava/lang/Throwable;)V

    .line 1477
    const/4 v5, 0x0

    return-object v5
.end method

.method public getInsertionsByPosition(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/List;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 10
    .param p1, "node"    # Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/io/ASTPath;",
            ">;",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 1835
    .local p2, "p":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1836
    .local v0, "uninserted":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-virtual {p0, p1, v0}, Lannotator/find/TreeFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/util/List;)Ljava/lang/Void;

    .line 1842
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getTypeDecls()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1843
    .local v1, "typeDecls":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/Insertion;

    .line 1844
    .local v3, "i":Lannotator/find/Insertion;
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v4

    invoke-virtual {v4}, Lannotator/find/Criteria;->getInClass()Lannotator/find/InClassCriterion;

    move-result-object v4

    .line 1845
    .local v4, "c":Lannotator/find/InClassCriterion;
    if-nez v4, :cond_0

    .line 1846
    goto :goto_0

    .line 1848
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 1849
    .local v6, "t":Lcom/sun/source/tree/Tree;
    invoke-static {p1, v6}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v4, v7}, Lannotator/find/InClassCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1854
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    const-string v8, "<init>()V"

    invoke-virtual {v7, v8}, Lannotator/find/Criteria;->isOnMethod(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1855
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    invoke-virtual {v7}, Lannotator/find/Criteria;->isOnLocalVariable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1857
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v8, v4, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    invoke-virtual {v3}, Lannotator/find/Insertion;->getText()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v3}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Found class %s, but unable to insert %s:%n  %s%n"

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1860
    .end local v6    # "t":Lcom/sun/source/tree/Tree;
    :cond_1
    goto :goto_1

    .line 1861
    .end local v3    # "i":Lannotator/find/Insertion;
    .end local v4    # "c":Lannotator/find/InClassCriterion;
    :cond_2
    goto :goto_0

    .line 1862
    :cond_3
    sget-object v2, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v2}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1864
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/Insertion;

    .line 1865
    .restart local v3    # "i":Lannotator/find/Insertion;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to insert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1866
    .end local v3    # "i":Lannotator/find/Insertion;
    goto :goto_2

    .line 1868
    :cond_4
    sget-object v2, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    iget-object v3, p0, Lannotator/find/TreeFinder;->insertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getPositions => %d positions%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    iget-object v2, p0, Lannotator/find/TreeFinder;->insertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Multimaps;->unmodifiableSetMultimap(Lorg/checkerframework/com/google/common/collect/SetMultimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    return-object v2
.end method

.method public getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p1, "target"    # Lcom/sun/source/tree/Tree;

    .line 236
    iget-object v0, p0, Lannotator/find/TreeFinder;->treePathCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lannotator/find/TreeFinder;->treePathCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/TreePath;

    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Lannotator/find/TreeFinder;->tree:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {v0, p1}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 240
    .local v0, "result":Lcom/sun/source/util/TreePath;
    iget-object v1, p0, Lannotator/find/TreeFinder;->treePathCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-object v0
.end method

.method public getPaths()Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lannotator/find/TreeFinder;->astInsertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->unmodifiableSetMultimap(Lorg/checkerframework/com/google/common/collect/SetMultimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public getPositions(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lannotator/find/Insertions;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 11
    .param p1, "node"    # Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .param p2, "insertions"    # Lannotator/find/Insertions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Lannotator/find/Insertions;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/io/ASTPath;",
            ">;",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 1886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1887
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    iget-object v1, p0, Lannotator/find/TreeFinder;->treePathCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1888
    sget-boolean v1, Lannotator/Main;->temporaryDebug:Z

    const-string v2, "list pre-size: "

    const-string v3, "insertions size: "

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 1889
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lannotator/find/Insertions;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1890
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertions.forOuterClass(\"\") size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, p1, v4}, Lannotator/find/Insertions;->forOuterClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1891
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1893
    :cond_0
    invoke-virtual {p2, p1, v4}, Lannotator/find/Insertions;->forOuterClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1894
    sget-boolean v1, Lannotator/Main;->temporaryDebug:Z

    const-string v4, "list post-size: "

    if-eqz v1, :cond_1

    .line 1895
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1897
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getTypeDecls()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree;

    .line 1898
    .local v5, "decl":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree;->getTag()Lcom/sun/tools/javac/tree/JCTree$Tag;

    move-result-object v6

    sget-object v7, Lcom/sun/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lcom/sun/tools/javac/tree/JCTree$Tag;

    if-ne v6, v7, :cond_3

    .line 1899
    move-object v6, v5

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->className()Ljava/lang/String;

    move-result-object v6

    .line 1900
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p2, p1, v6}, Lannotator/find/Insertions;->forOuterClass(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 1901
    .local v7, "forClass":Ljava/util/Collection;, "Ljava/util/Collection<Lannotator/find/Insertion;>;"
    sget-boolean v8, Lannotator/Main;->temporaryDebug:Z

    if-eqz v8, :cond_2

    .line 1902
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lannotator/find/Insertions;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1903
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertions.forOuterClass("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1904
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1906
    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1907
    sget-boolean v8, Lannotator/Main;->temporaryDebug:Z

    if-eqz v8, :cond_3

    .line 1908
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1911
    .end local v5    # "decl":Lcom/sun/tools/javac/tree/JCTree;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "forClass":Ljava/util/Collection;, "Ljava/util/Collection<Lannotator/find/Insertion;>;"
    :cond_3
    goto/16 :goto_0

    .line 1912
    :cond_4
    invoke-virtual {p0, p1, v0}, Lannotator/find/TreeFinder;->getInsertionsByPosition(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/List;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    return-object v1
.end method

.method handled(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 922
    sget-object v0, Lannotator/find/TreeFinder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 943
    :pswitch_0
    instance-of v0, p1, Lcom/sun/source/tree/ExpressionTree;

    return v0

    .line 941
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder;->scan(Lcom/sun/source/tree/Tree;Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/util/List;)Ljava/lang/Void;
    .locals 13
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 974
    .local p2, "p":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 978
    :cond_0
    sget-object v1, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "TreeFinder.scan(kind=%s, %d insertions): %s%n"

    invoke-virtual {v1, v3, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    sget-boolean v2, Lannotator/Main;->temporaryDebug:Z

    if-eqz v2, :cond_1

    .line 980
    new-instance v2, Ljava/lang/Error;

    const-string v3, "backtrace at TreeFinder.scan()"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 982
    :cond_1
    invoke-virtual {p0, p1}, Lannotator/find/TreeFinder;->handled(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "TreeFinder.scan(%s) skipping, unhandled: %s%n"

    invoke-virtual {v1, v2, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 988
    :cond_2
    invoke-virtual {p0, p1}, Lannotator/find/TreeFinder;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 989
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 991
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 990
    const-string v3, "Mismatch: \'%s\' \'%s\' \'%s\'%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 996
    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    .line 997
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 998
    .local v3, "t":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_5

    .line 1002
    goto :goto_2

    .line 1004
    :cond_5
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_6

    .line 1005
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1007
    .end local v3    # "t":Lcom/sun/source/tree/Tree;
    :cond_6
    goto :goto_1

    .line 1010
    :cond_7
    :goto_2
    sget-object v2, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Considering %d insertions.%n"

    invoke-virtual {v2, v4, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lannotator/find/Insertion;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1012
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/Insertion;

    .line 1013
    .local v3, "i":Lannotator/find/Insertion;
    sget-object v4, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "Considering insertion at tree:%n"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    const-string v5, "  Insertion: %s%n"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lannotator/Main;->firstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "  First line of node: %s%n"

    invoke-virtual {v4, v7, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "  Type of node: %s%n"

    invoke-virtual {v4, v7, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    invoke-virtual {v3}, Lannotator/find/Insertion;->isInserted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1020
    const-string v5, "  ... already inserted%n"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1022
    goto :goto_3

    .line 1024
    :cond_8
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v5

    invoke-virtual {v5, v1, p1}, Lannotator/find/Criteria;->isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1025
    const-string v5, "  ... not satisfied%n"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    goto :goto_3

    .line 1028
    :cond_9
    const-string v5, "  ... satisfied!%n"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lannotator/Main;->firstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "    First line of node: %s%n"

    invoke-virtual {v4, v7, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "    Type of node: %s%n"

    invoke-virtual {v4, v7, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {v3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v5

    invoke-virtual {v5}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    .line 1033
    .local v5, "astPath":Lscenelib/annotations/io/ASTPath;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    if-nez v5, :cond_a

    move-object v6, v0

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_4
    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "    astPath = %s [%s]%n"

    invoke-virtual {v4, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    invoke-virtual {v3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v6

    sget-object v7, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v6, v7, :cond_c

    .line 1039
    move-object v6, v3

    check-cast v6, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v6}, Lannotator/find/AnnotationInsertion;->getAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v6

    invoke-virtual {v6}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v6

    .line 1040
    .local v6, "adef":Lscenelib/annotations/el/AnnotationDef;
    invoke-virtual {v6}, Lscenelib/annotations/el/AnnotationDef;->isTypeAnnotation()Z

    move-result v7

    .line 1042
    .local v7, "isTypeAnnotation":Z
    sget-object v8, Lannotator/find/TreeFinder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    goto :goto_5

    .line 1044
    :sswitch_0
    if-nez v7, :cond_c

    .line 1045
    goto/16 :goto_3

    .line 1049
    :sswitch_1
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder;->parent(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v8

    .line 1050
    .local v8, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v8}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    .line 1051
    .local v9, "parentKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v10, :cond_b

    .line 1052
    goto/16 :goto_3

    .line 1054
    :cond_b
    move-object v10, p1

    check-cast v10, Lcom/sun/source/tree/IdentifierTree;

    .line 1055
    .local v10, "id":Lcom/sun/source/tree/IdentifierTree;
    invoke-interface {v10}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v11

    const-string v12, "this"

    invoke-interface {v11, v12}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1056
    goto/16 :goto_3

    .line 1064
    .end local v6    # "adef":Lscenelib/annotations/el/AnnotationDef;
    .end local v7    # "isTypeAnnotation":Z
    .end local v8    # "parent":Lcom/sun/source/tree/Tree;
    .end local v9    # "parentKind":Lcom/sun/source/tree/Tree$Kind;
    .end local v10    # "id":Lcom/sun/source/tree/IdentifierTree;
    :cond_c
    :goto_5
    if-nez v5, :cond_d

    invoke-virtual {p0, v1, v3}, Lannotator/find/TreeFinder;->findPosition(Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6

    :cond_d
    sget-boolean v6, Lannotator/Main;->convert_jaifs:Z

    if-eqz v6, :cond_e

    move-object v6, v0

    goto :goto_6

    .line 1066
    :cond_e
    invoke-virtual {p0, v5, v1, v3}, Lannotator/find/TreeFinder;->findPositionByASTPath(Lscenelib/annotations/io/ASTPath;Lcom/sun/source/util/TreePath;Lannotator/find/Insertion;)Ljava/lang/Integer;

    move-result-object v6

    :goto_6
    nop

    .line 1067
    .local v6, "pos":Ljava/lang/Integer;
    if-eqz v6, :cond_f

    .line 1068
    nop

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1068
    const-string v8, "  ... satisfied! at %d for node of type %s: %s%n"

    invoke-virtual {v4, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    iget-object v4, p0, Lannotator/find/TreeFinder;->insertions:Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-static {v6, v5}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v7

    invoke-interface {v4, v7, v3}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1073
    .end local v5    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local v6    # "pos":Ljava/lang/Integer;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1074
    .end local v3    # "i":Lannotator/find/Insertion;
    goto/16 :goto_3

    .line 1075
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lannotator/find/Insertion;>;"
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 975
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    :cond_11
    :goto_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
