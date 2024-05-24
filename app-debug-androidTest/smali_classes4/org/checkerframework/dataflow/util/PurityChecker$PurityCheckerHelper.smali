.class public Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;
.super Lcom/sun/source/util/TreePathScanner;
.source "PurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/util/PurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PurityCheckerHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

.field private final assumeDeterministic:Z

.field private final assumeSideEffectFree:Z

.field purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    const-class v0, Lorg/checkerframework/dataflow/util/PurityChecker;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/javacutil/AnnotationProvider;ZZ)V
    .locals 1
    .param p1, "annoProvider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p2, "assumeSideEffectFree"    # Z
    .param p3, "assumeDeterministic"    # Z

    .line 167
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 141
    new-instance v0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    .line 168
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 169
    iput-boolean p2, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeSideEffectFree:Z

    .line 170
    iput-boolean p3, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeDeterministic:Z

    .line 171
    return-void
.end method


# virtual methods
.method protected assignmentCheck(Lcom/sun/source/tree/ExpressionTree;)V
    .locals 2
    .param p1, "variable"    # Lcom/sun/source/tree/ExpressionTree;

    .line 265
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    const-string v1, "assign.field"

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotBothReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    instance-of v0, p1, Lcom/sun/source/tree/ArrayAccessTree;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    const-string v1, "assign.array"

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotBothReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->isLocalVariable(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected isLocalVariable(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 1
    .param p1, "variable"    # Lcom/sun/source/tree/ExpressionTree;

    .line 278
    instance-of v0, p1, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "ignore"    # Ljava/lang/Void;

    .line 259
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 260
    .local v0, "variable":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assignmentCheck(Lcom/sun/source/tree/ExpressionTree;)V

    .line 261
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CatchTree;
    .param p2, "ignore"    # Ljava/lang/Void;

    .line 175
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    const-string v1, "catch"

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotDetReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitCatch(Lcom/sun/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "ignore"    # Ljava/lang/Void;

    .line 283
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 284
    .local v0, "variable":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assignmentCheck(Lcom/sun/source/tree/ExpressionTree;)V

    .line 285
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "ignore"    # Ljava/lang/Void;

    .line 181
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 183
    .local v0, "elt":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->hasPurityAnnotation(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v1

    const-string v2, "call.method"

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotBothReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeDeterministic:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    invoke-static {v1, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    .line 187
    .local v1, "det":Z
    :goto_1
    iget-boolean v5, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeSideEffectFree:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 188
    invoke-static {v5, v0}, Lorg/checkerframework/dataflow/util/PurityUtils;->isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    .line 189
    .local v3, "seFree":Z
    :cond_4
    if-nez v1, :cond_5

    if-nez v3, :cond_5

    .line 190
    iget-object v4, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    invoke-virtual {v4, p1, v2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotBothReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_5
    if-nez v1, :cond_6

    .line 192
    iget-object v4, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    invoke-virtual {v4, p1, v2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotDetReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    goto :goto_2

    .line 193
    :cond_6
    if-nez v3, :cond_7

    .line 194
    iget-object v4, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    invoke-virtual {v4, p1, v2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotSEFreeReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 197
    .end local v1    # "det":Z
    .end local v3    # "seFree":Z
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    .line 181
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "ignore"    # Ljava/lang/Void;

    .line 233
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 234
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->THROW:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 236
    .local v1, "okThrowDeterministic":Z
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 237
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 238
    .local v2, "ctorElement":Ljavax/lang/model/element/Element;
    iget-boolean v5, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeDeterministic:Z

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    .line 239
    .local v5, "deterministic":Z
    :goto_2
    iget-boolean v6, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->assumeSideEffectFree:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->annoProvider:Lorg/checkerframework/javacutil/AnnotationProvider;

    .line 240
    invoke-static {v6, v2}, Lorg/checkerframework/dataflow/util/PurityUtils;->isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_4

    :cond_4
    :goto_3
    nop

    .line 244
    .local v3, "sideEffectFree":Z
    :goto_4
    if-nez v5, :cond_5

    .line 245
    iget-object v4, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    const-string v6, "object.creation"

    invoke-virtual {v4, p1, v6}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotDetReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 247
    :cond_5
    if-nez v3, :cond_6

    .line 248
    iget-object v4, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    const-string v6, "call.constructor"

    invoke-virtual {v4, p1, v6}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->addNotSEFreeReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 254
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    return-object v4

    .line 236
    .end local v2    # "ctorElement":Ljavax/lang/model/element/Element;
    .end local v3    # "sideEffectFree":Z
    .end local v5    # "deterministic":Z
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
