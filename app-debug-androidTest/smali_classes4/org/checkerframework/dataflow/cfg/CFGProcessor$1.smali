.class Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;
.super Lcom/sun/source/util/TreePathScanner;
.source "CFGProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGProcessor;->createTreePathScanner(Lcom/sun/source/tree/CompilationUnitTree;)Lcom/sun/source/util/TreePathScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    .line 80
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 83
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 84
    .local v0, "el":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-static {v2}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->access$000(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-static {v1, p1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->access$102(Lorg/checkerframework/dataflow/cfg/CFGProcessor;Lcom/sun/source/tree/ClassTree;)Lcom/sun/source/tree/ClassTree;

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 92
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 93
    .local v0, "el":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-static {v2}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->access$200(Lorg/checkerframework/dataflow/cfg/CFGProcessor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x0

    return-object v1

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGProcessor$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-static {v1, p1}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->access$302(Lorg/checkerframework/dataflow/cfg/CFGProcessor;Lcom/sun/source/tree/MethodTree;)Lcom/sun/source/tree/MethodTree;

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method
