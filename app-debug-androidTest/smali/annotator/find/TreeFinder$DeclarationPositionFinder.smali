.class Lannotator/find/TreeFinder$DeclarationPositionFinder;
.super Lcom/sun/source/util/TreeScanner;
.source "TreeFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/TreeFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeclarationPositionFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreeScanner<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lannotator/find/TreeFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 839
    const-class v0, Lannotator/find/TreeFinder;

    return-void
.end method

.method private constructor <init>(Lannotator/find/TreeFinder;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lannotator/find/TreeFinder$DeclarationPositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-direct {p0}, Lcom/sun/source/util/TreeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lannotator/find/TreeFinder;Lannotator/find/TreeFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lannotator/find/TreeFinder;
    .param p2, "x1"    # Lannotator/find/TreeFinder$1;

    .line 839
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$DeclarationPositionFinder;-><init>(Lannotator/find/TreeFinder;)V

    return-void
.end method


# virtual methods
.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 884
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 885
    .local v0, "cd":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    const/4 v1, -0x1

    .line 886
    .local v1, "result":I
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    .line 887
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 888
    :cond_0
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->getPreferredPosition()I

    move-result v1

    .line 890
    :cond_1
    if-gez v1, :cond_2

    .line 891
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getPreferredPosition()I

    move-result v1

    .line 893
    :cond_2
    if-gez v1, :cond_4

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    .line 894
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 895
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->getPreferredPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 894
    const-string v4, "%d %d %d%n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 896
    :cond_4
    :goto_0
    if-gez v1, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 839
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$DeclarationPositionFinder;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 878
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 879
    .local v0, "cu":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getStartPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 839
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$DeclarationPositionFinder;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 844
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    .line 851
    .local v0, "mt":Lcom/sun/source/tree/ModifiersTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 855
    .local v1, "annos":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 856
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    .local v2, "before":Lcom/sun/tools/javac/tree/JCTree;
    goto :goto_0

    .line 857
    .end local v2    # "before":Lcom/sun/tools/javac/tree/JCTree;
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 858
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .restart local v2    # "before":Lcom/sun/tools/javac/tree/JCTree;
    goto :goto_0

    .line 862
    .end local v2    # "before":Lcom/sun/tools/javac/tree/JCTree;
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree;

    .line 864
    .restart local v2    # "before":Lcom/sun/tools/javac/tree/JCTree;
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v3

    .line 868
    .local v3, "declPos":I
    move-object v4, v0

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v4

    .line 869
    .local v4, "modsPos":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 870
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 873
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 839
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$DeclarationPositionFinder;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
