.class public Lscenelib/annotations/io/ASTIndex;
.super Lscenelib/annotations/util/coll/WrapperMap;
.source "ASTIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscenelib/annotations/util/coll/WrapperMap<",
        "Lcom/sun/source/tree/Tree;",
        "Lscenelib/annotations/io/ASTRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXPECTED_SIZE:I = 0x80

.field private static cachedIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lscenelib/annotations/io/ASTRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedRoot:Lcom/sun/source/tree/Tree;


# instance fields
.field private final cut:Lcom/sun/source/tree/CompilationUnitTree;

.field private final formals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lscenelib/annotations/io/ASTIndex;->cachedRoot:Lcom/sun/source/tree/Tree;

    .line 75
    sput-object v0, Lscenelib/annotations/io/ASTIndex;->cachedIndex:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 2
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 96
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/util/coll/WrapperMap;-><init>(Ljava/util/Map;)V

    .line 97
    iput-object p1, p0, Lscenelib/annotations/io/ASTIndex;->cut:Lcom/sun/source/tree/CompilationUnitTree;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/ASTIndex;->formals:Ljava/util/Map;

    .line 108
    new-instance v0, Lscenelib/annotations/io/ASTIndex$1;

    invoke-direct {v0, p0}, Lscenelib/annotations/io/ASTIndex$1;-><init>(Lscenelib/annotations/io/ASTIndex;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sun/source/tree/CompilationUnitTree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    return-void
.end method

.method static synthetic access$000(Lscenelib/annotations/io/ASTIndex;)Lcom/sun/source/tree/CompilationUnitTree;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/ASTIndex;

    .line 72
    iget-object v0, p0, Lscenelib/annotations/io/ASTIndex;->cut:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method static synthetic access$100(Lscenelib/annotations/io/ASTIndex;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lscenelib/annotations/io/ASTIndex;

    .line 72
    iget-object v0, p0, Lscenelib/annotations/io/ASTIndex;->formals:Ljava/util/Map;

    return-object v0
.end method

.method public static getASTPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;
    .locals 1
    .param p0, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 634
    invoke-static {p0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTRecord;

    return-object v0
.end method

.method public static getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;
    .locals 11
    .param p0, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 643
    invoke-static {p0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTIndex;

    iget-object v0, v0, Lscenelib/annotations/io/ASTIndex;->back:Ljava/util/Map;

    .line 644
    .local v0, "fwdIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 645
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    .line 646
    .local v1, "revIndex":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTRecord;Lcom/sun/source/tree/Tree;>;"
    invoke-interface {p0}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 647
    .local v2, "et":Lcom/sun/source/tree/ExpressionTree;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 649
    new-instance v4, Lscenelib/annotations/io/ASTRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    iget-object v9, p1, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    iget-object v10, p1, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    move-object p1, v4

    .line 652
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/Tree;

    return-object v4
.end method

.method public static getParameterIndex(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p0, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "varName"    # Ljava/lang/String;

    .line 667
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 671
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    :try_start_1
    invoke-static {p0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTIndex;

    .line 676
    .local v0, "ai":Lscenelib/annotations/io/ASTIndex;
    iget-object v1, v0, Lscenelib/annotations/io/ASTIndex;->formals:Ljava/util/Map;

    .line 677
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 678
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 679
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 680
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 681
    :cond_0
    nop

    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 682
    goto :goto_0

    .line 679
    .end local v0    # "ai":Lscenelib/annotations/io/ASTIndex;
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 683
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 686
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getParameterName(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 658
    :try_start_0
    invoke-static {p0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTIndex;

    .line 659
    .local v0, "ai":Lscenelib/annotations/io/ASTIndex;
    iget-object v1, v0, Lscenelib/annotations/io/ASTIndex;->formals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 660
    .end local v0    # "ai":Lscenelib/annotations/io/ASTIndex;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTreePath(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p0, "cut"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;

    .line 638
    invoke-static {p0, p1}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 639
    .local v0, "node":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;
    .locals 1
    .param p0, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree;",
            "Lscenelib/annotations/io/ASTRecord;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lscenelib/annotations/io/ASTIndex;->cachedRoot:Lcom/sun/source/tree/Tree;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    sput-object p0, Lscenelib/annotations/io/ASTIndex;->cachedRoot:Lcom/sun/source/tree/Tree;

    .line 90
    new-instance v0, Lscenelib/annotations/io/ASTIndex;

    invoke-direct {v0, p0}, Lscenelib/annotations/io/ASTIndex;-><init>(Lcom/sun/source/tree/CompilationUnitTree;)V

    sput-object v0, Lscenelib/annotations/io/ASTIndex;->cachedIndex:Ljava/util/Map;

    .line 92
    :cond_1
    sget-object v0, Lscenelib/annotations/io/ASTIndex;->cachedIndex:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTIndex;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 693
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 694
    const-string v4, " # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;>;"
    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
