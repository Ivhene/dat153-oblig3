.class public Lannotator/scanner/MemberReferenceScanner;
.super Lannotator/scanner/CommonScanner;
.source "MemberReferenceScanner.java"


# static fields
.field private static methodNameToMemberReferenceOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private done:Z

.field private index:I

.field private final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/scanner/MemberReferenceScanner;->methodNameToMemberReferenceOffsets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 42
    invoke-direct {p0}, Lannotator/scanner/CommonScanner;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/MemberReferenceScanner;->index:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/scanner/MemberReferenceScanner;->done:Z

    .line 45
    iput-object p1, p0, Lannotator/scanner/MemberReferenceScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 46
    return-void
.end method

.method public static addMemberReferenceToMethod(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 73
    sget-object v0, Lannotator/scanner/MemberReferenceScanner;->methodNameToMemberReferenceOffsets:Ljava/util/Map;

    .line 74
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 77
    sget-object v1, Lannotator/scanner/MemberReferenceScanner;->methodNameToMemberReferenceOffsets:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public static getMemberReferenceIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/lang/Integer;

    .line 94
    sget-object v0, Lannotator/scanner/MemberReferenceScanner;->methodNameToMemberReferenceOffsets:Ljava/util/Map;

    .line 95
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, "offsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 97
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static indexOfMemberReferenceTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 3
    .param p0, "origpath"    # Lcom/sun/source/util/TreePath;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 23
    invoke-static {p0}, Lannotator/scanner/MemberReferenceScanner;->findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 24
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 25
    const/4 v1, -0x1

    return v1

    .line 28
    :cond_0
    new-instance v1, Lannotator/scanner/MemberReferenceScanner;

    invoke-direct {v1, p1}, Lannotator/scanner/MemberReferenceScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 29
    .local v1, "mcs":Lannotator/scanner/MemberReferenceScanner;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lannotator/scanner/MemberReferenceScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v2, v1, Lannotator/scanner/MemberReferenceScanner;->index:I

    return v2
.end method


# virtual methods
.method public bridge synthetic visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/MemberReferenceScanner;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 50
    iget-boolean v0, p0, Lannotator/scanner/MemberReferenceScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lannotator/scanner/MemberReferenceScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/MemberReferenceScanner;->index:I

    .line 53
    :cond_0
    iget-object v0, p0, Lannotator/scanner/MemberReferenceScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 54
    iput-boolean v1, p0, Lannotator/scanner/MemberReferenceScanner;->done:Z

    .line 56
    :cond_1
    invoke-super {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
