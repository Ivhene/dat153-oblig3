.class public Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
.super Ljava/lang/Object;
.source "FlowExpressionParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/FlowExpressionParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowExpressionContext"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field public final checkerContext:Lorg/checkerframework/framework/util/BaseContext;

.field public final outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

.field public final parsingMember:Z

.field public final receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

.field public final useLocalScope:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 690
    const-class v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V
    .locals 0
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p3, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;",
            "Lorg/checkerframework/framework/util/BaseContext;",
            ")V"
        }
    .end annotation

    .line 719
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 720
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V
    .locals 7
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "outerReceiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p4, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;",
            "Lorg/checkerframework/framework/util/BaseContext;",
            ")V"
        }
    .end annotation

    .line 727
    .local p3, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;ZZ)V

    .line 728
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;ZZ)V
    .locals 1
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "outerReceiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p4, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;
    .param p5, "parsingMember"    # Z
    .param p6, "useLocalScope"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;",
            "Lorg/checkerframework/framework/util/BaseContext;",
            "ZZ)V"
        }
    .end annotation

    .line 736
    .local p3, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    if-eqz p4, :cond_0

    .line 738
    iput-object p1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 739
    iput-object p3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    .line 740
    iput-object p2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 741
    iput-object p4, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    .line 742
    iput-boolean p5, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    .line 743
    iput-boolean p6, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->useLocalScope:Z

    .line 744
    return-void

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static buildContextForClassDeclaration(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 4
    .param p0, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p1, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 843
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 845
    .local v0, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 847
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v1

    .line 846
    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 848
    .local v1, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v2, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v3, v1, v2, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 851
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    return-object v3
.end method

.method public static buildContextForLambda(Lcom/sun/source/tree/LambdaExpressionTree;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 8
    .param p0, "lambdaTree"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 803
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 804
    .local v0, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 805
    .local v1, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 807
    invoke-interface {p2}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v2

    .line 806
    invoke-static {v2, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 808
    .local v2, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v3, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {p0}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/VariableTree;

    .line 810
    .local v5, "arg":Lcom/sun/source/tree/VariableTree;
    nop

    .line 812
    invoke-interface {p2}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v7, v5, v1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 811
    invoke-static {v6, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 810
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    .end local v5    # "arg":Lcom/sun/source/tree/VariableTree;
    goto :goto_0

    .line 815
    :cond_0
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v4, v2, v3, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 817
    .local v4, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    return-object v4
.end method

.method public static buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 1
    .param p0, "methodDeclaration"    # Lcom/sun/source/tree/MethodTree;
    .param p1, "enclosingTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 758
    nop

    .line 759
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 758
    invoke-static {p0, v0, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v0

    return-object v0
.end method

.method public static buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 2
    .param p0, "methodDeclaration"    # Lcom/sun/source/tree/MethodTree;
    .param p1, "currentPath"    # Lcom/sun/source/util/TreePath;
    .param p2, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 833
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 834
    .local v0, "classTree":Lcom/sun/source/tree/Tree;
    invoke-static {p0, v0, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v1

    return-object v1
.end method

.method public static buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 7
    .param p0, "methodDeclaration"    # Lcom/sun/source/tree/MethodTree;
    .param p1, "enclosingType"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 778
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    nop

    .line 781
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 780
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 782
    .local v0, "classElt":Ljavax/lang/model/element/Element;
    new-instance v1, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/Element;)V

    move-object v0, v1

    .line 783
    .local v0, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 784
    .end local v0    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_0
    new-instance v0, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 786
    .restart local v0    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_0
    nop

    .line 788
    invoke-interface {p2}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v1

    .line 787
    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 789
    .local v1, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v2, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 791
    .local v4, "arg":Lcom/sun/source/tree/VariableTree;
    nop

    .line 793
    invoke-interface {p2}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v6, v4, v0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 792
    invoke-static {v5, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 791
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v4    # "arg":Lcom/sun/source/tree/VariableTree;
    goto :goto_1

    .line 796
    :cond_1
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v3, v1, v2, p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 798
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    return-object v3
.end method

.method public static buildContextForMethodUse(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 7
    .param p0, "methodInvocation"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p1, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 883
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 885
    .local v0, "receiverTree":Lcom/sun/source/tree/ExpressionTree;
    if-nez v0, :cond_0

    .line 886
    nop

    .line 888
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 887
    invoke-static {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .local v1, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 890
    .end local v1    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    nop

    .line 892
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v1

    .line 891
    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 895
    .restart local v1    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    invoke-interface {p0}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    .line 896
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 897
    .local v3, "argReceivers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/ExpressionTree;

    .line 898
    .local v5, "argTree":Lcom/sun/source/tree/ExpressionTree;
    nop

    .line 900
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v6

    .line 899
    invoke-static {v6, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 898
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    .end local v5    # "argTree":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_1

    .line 903
    :cond_1
    new-instance v4, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v4, v1, v3, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    return-object v4
.end method

.method public static buildContextForMethodUse(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 6
    .param p0, "methodInvocation"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p1, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 861
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 862
    .local v0, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 864
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v1

    .line 863
    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 865
    .local v1, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v2, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 867
    .local v4, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 869
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v5

    .line 868
    invoke-static {v5, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 867
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    .end local v4    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 871
    :cond_0
    new-instance v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v3, v1, v2, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 873
    .local v3, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    return-object v3
.end method

.method public static buildContextForNewClassUse(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 5
    .param p0, "n"    # Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
    .param p1, "checkerContext"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 915
    nop

    .line 916
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 918
    .local v0, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v1, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 920
    .local v3, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 922
    invoke-interface {p1}, Lorg/checkerframework/framework/util/BaseContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v4

    .line 921
    invoke-static {v4, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 920
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    .end local v3    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 925
    :cond_0
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    invoke-direct {v2, v0, v1, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 927
    .local v2, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    return-object v2
.end method


# virtual methods
.method public copyAndSetUseLocalScope(Z)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 8
    .param p1, "useLocalScope"    # Z

    .line 963
    new-instance v7, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v1, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    iget-boolean v5, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    move-object v0, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;ZZ)V

    return-object v7
.end method

.method public copyAndUseOuterReceiver()Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 8

    .line 949
    new-instance v7, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->useLocalScope:Z

    move-object v0, v7

    move-object v1, v2

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;ZZ)V

    return-object v7
.end method

.method public copyChangeToParsingMemberOfReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 8
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 935
    new-instance v7, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->useLocalScope:Z

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;ZZ)V

    return-object v7
.end method

.method public debugToString()Ljava/lang/String;
    .locals 1

    .line 979
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->debugToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "indent"    # I

    .line 989
    const-string v0, " "

    invoke-static {p1, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "indentString":Ljava/lang/String;
    new-instance v2, Ljava/util/StringJoiner;

    invoke-direct {v2, v0, v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 991
    .local v1, "sj":Ljava/util/StringJoiner;
    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->debugToString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "receiver=%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 992
    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->arguments:Ljava/util/List;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "arguments=%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 993
    iget-object v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->outerReceiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->debugToString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "outerReceiver=%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 994
    const-string v2, "..."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkerContext=%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 996
    iget-boolean v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->parsingMember:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "parsingMember=%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 997
    iget-boolean v2, p0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->useLocalScope:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "useLocalScope=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 998
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
