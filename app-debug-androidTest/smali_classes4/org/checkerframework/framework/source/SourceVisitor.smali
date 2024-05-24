.class public abstract Lorg/checkerframework/framework/source/SourceVisitor;
.super Lcom/sun/source/util/TreePathScanner;
.source "SourceVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/source/util/TreePathScanner<",
        "TR;TP;>;"
    }
.end annotation


# instance fields
.field protected final elements:Ljavax/lang/model/util/Elements;

.field lastVisited:Lcom/sun/source/tree/Tree;

.field protected root:Lcom/sun/source/tree/CompilationUnitTree;

.field protected final trees:Lcom/sun/source/util/Trees;

.field public final treesWithSuppressWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end field

.field protected final types:Ljavax/lang/model/util/Types;

.field private final warnUnneededSuppressions:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/source/SourceChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/framework/source/SourceChecker;

    .line 49
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/SourceChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 53
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->trees:Lcom/sun/source/util/Trees;

    .line 54
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 55
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->types:Ljavax/lang/model/util/Types;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    .line 58
    const-string v1, "warnUnneededSuppressions"

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->warnUnneededSuppressions:Z

    .line 59
    return-void
.end method

.method private storeSuppressWarningsAnno(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 115
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/source/SourceVisitor;->warnUnneededSuppressions:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 119
    .local v0, "elt":Ljavax/lang/model/element/Element;
    const-class v1, Ljava/lang/SuppressWarnings;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->lastVisited:Lcom/sun/source/tree/Tree;

    .line 88
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 0
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 67
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceVisitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    .line 68
    return-void
.end method

.method public visit(Lcom/sun/source/util/TreePath;)V
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 81
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceVisitor;->lastVisited:Lcom/sun/source/tree/Tree;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/source/SourceVisitor;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;->storeSuppressWarningsAnno(Lcom/sun/source/tree/Tree;)V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;->storeSuppressWarningsAnno(Lcom/sun/source/tree/Tree;)V

    .line 106
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "variableTree"    # Lcom/sun/source/tree/VariableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "TP;)TR;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;->storeSuppressWarningsAnno(Lcom/sun/source/tree/Tree;)V

    .line 100
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
