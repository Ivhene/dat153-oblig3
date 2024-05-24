.class public Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;
.super Ljava/lang/Object;
.source "TypeArgInferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;,
        Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;
    }
.end annotation


# static fields
.field private static final substituteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private static final substitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 450
    new-instance v0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    .line 454
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substituteMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areSameCapture(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z
    .locals 7
    .param p0, "actual"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "inferred"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "types"    # Ljavax/lang/model/util/Types;

    .line 571
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    return v1

    .line 573
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_1

    .line 574
    return v1

    .line 575
    :cond_1
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 576
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_4

    .line 577
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 578
    .local v0, "actualDT":Ljavax/lang/model/type/DeclaredType;
    move-object v2, p1

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 579
    .local v2, "inferredDT":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 580
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 581
    nop

    .line 582
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 583
    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/TypeMirror;

    .line 581
    invoke-static {v5, v6, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->areSameCapture(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 585
    return v3

    .line 580
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 588
    .end local v4    # "i":I
    :cond_3
    return v1

    .line 591
    .end local v0    # "actualDT":Ljavax/lang/model/type/DeclaredType;
    .end local v2    # "inferredDT":Ljavax/lang/model/type/DeclaredType;
    :cond_4
    return v3
.end method

.method public static assignedTo(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 143
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getAssignmentContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 145
    .local v0, "assignmentContext":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto/16 :goto_1

    .line 147
    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    instance-of v1, v0, Lcom/sun/source/tree/AssignmentTree;

    if-eqz v1, :cond_1

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/AssignmentTree;

    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 149
    .local v1, "variable":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 150
    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto/16 :goto_1

    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    instance-of v1, v0, Lcom/sun/source/tree/CompoundAssignmentTree;

    if-eqz v1, :cond_2

    .line 151
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/CompoundAssignmentTree;

    invoke-interface {v1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 152
    .local v1, "variable":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 153
    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto/16 :goto_1

    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    instance-of v1, v0, Lcom/sun/source/tree/MethodInvocationTree;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 156
    .local v1, "methodInvocation":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/source/tree/MemberSelectTree;

    if-eqz v3, :cond_3

    .line 157
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v3}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 158
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 159
    return-object v2

    .line 161
    :cond_3
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 162
    .local v2, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 163
    .local v3, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 169
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 164
    invoke-static {p0, p1, v2, v3, v4}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedToExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 170
    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto/16 :goto_1

    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    instance-of v1, v0, Lcom/sun/source/tree/NewArrayTree;

    if-eqz v1, :cond_5

    .line 173
    const/4 v1, 0x0

    .restart local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto/16 :goto_1

    .line 181
    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    instance-of v1, v0, Lcom/sun/source/tree/NewClassTree;

    if-eqz v1, :cond_7

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/NewClassTree;

    .line 184
    .local v1, "newClassTree":Lcom/sun/source/tree/NewClassTree;
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/source/tree/NewClassTree;

    if-eqz v3, :cond_6

    .line 185
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 186
    return-object v2

    .line 188
    :cond_6
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->constructor(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 189
    .local v2, "constructorElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    .line 190
    .restart local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 196
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 191
    invoke-static {p0, p1, v2, v3, v4}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedToExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 197
    .end local v2    # "constructorElt":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_7
    instance-of v1, v0, Lcom/sun/source/tree/ReturnTree;

    if-eqz v1, :cond_9

    .line 198
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v1, "kinds":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sun/source/tree/Tree$Kind;>;"
    invoke-static {p1, v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 201
    .local v2, "enclosing":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_8

    .line 202
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    move-object v1, v3

    .local v3, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 204
    .end local v3    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_8
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 205
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 206
    .local v3, "fninf":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    move-object v1, v4

    .line 209
    .end local v2    # "enclosing":Lcom/sun/source/tree/Tree;
    .end local v3    # "fninf":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v1, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    goto :goto_1

    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_9
    instance-of v1, v0, Lcom/sun/source/tree/VariableTree;

    if-eqz v1, :cond_b

    .line 210
    invoke-static {p0, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->assignedToVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 215
    .restart local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 216
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    return-object v2

    .line 218
    :cond_a
    return-object v1

    .line 212
    .end local v1    # "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_b
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "AnnotatedTypes.assignedTo: shouldn\'t be here"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static assignedToExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 5
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "receiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lcom/sun/source/util/TreePath;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 228
    .local p4, "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    nop

    .line 230
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 229
    invoke-static {v0, p0, p3, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 234
    .local v0, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    const/4 v1, -0x1

    .line 235
    .local v1, "treeIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 236
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 237
    .local v3, "argumentTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {p1, v3}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->isArgument(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    move v1, v2

    .line 239
    goto :goto_1

    .line 235
    .end local v3    # "argumentTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 246
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .local v2, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_2

    .line 247
    .end local v2    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    nop

    .line 249
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 250
    .local v2, "varArgsType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 251
    .local v2, "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_2

    .line 252
    .end local v2    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 260
    .restart local v2    # "paramType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    if-eqz v2, :cond_5

    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->containsUninferredTypeParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 264
    :cond_4
    return-object v2

    .line 261
    :cond_5
    :goto_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public static assignedToVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "assignmentContext"    # Lcom/sun/source/tree/Tree;

    .line 330
    instance-of v0, p0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    if-eqz v0, :cond_0

    .line 331
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 333
    .local v0, "gatf":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<****>;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhsNoTypeVarDefault(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 335
    .end local v0    # "gatf":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<****>;"
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static checkForUninferredTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 391
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    return-void

    .line 395
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Can\'t make a constraint that includes an uninferred type argument."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static containsTypeParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)Z"
        }
    .end annotation

    .line 365
    .local p1, "typeVariables":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/lang/model/type/TypeVariable;>;"
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;-><init>(Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;)V

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 366
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static containsUninferredTypeParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Z
    .locals 5
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 342
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, "annotatedTypeVars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v1, "typeVars":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 346
    .local v3, "annotatedTypeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 349
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    .line 348
    invoke-static {v4}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    .line 346
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v3    # "annotatedTypeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 352
    :cond_0
    invoke-static {p0, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->containsTypeParameter(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method protected static correctResults(Ljava/util/Map;Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/type/ExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Map;
    .locals 10
    .param p1, "invocation"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "methodType"    # Ljavax/lang/model/type/ExecutableType;
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljavax/lang/model/type/ExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 540
    .local p0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 541
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 542
    .local v1, "types":Ljavax/lang/model/util/Types;
    nop

    .line 543
    invoke-static {p1, p2, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->getMappingFromReturnType(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/type/ExecutableType;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/util/Map;

    move-result-object v2

    .line 544
    .local v2, "fromReturn":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeMirror;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 545
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeVariable;

    .line 546
    .local v5, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 547
    goto :goto_0

    .line 549
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/TypeMirror;

    .line 550
    .local v6, "correctType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 551
    .local v7, "inferredType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1, v6}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-interface {v1, v7}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 552
    invoke-static {v6, v7, v1}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->areSameCapture(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 553
    goto :goto_0

    .line 556
    :cond_1
    invoke-interface {v1, v6, v7}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 557
    nop

    .line 560
    const/4 v8, 0x0

    invoke-static {v5, p3, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 558
    invoke-virtual {p3, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUninferredWildcardType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v8

    .line 562
    .local v8, "wt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 563
    invoke-interface {p0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v5    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    .end local v6    # "correctType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "inferredType":Ljavax/lang/model/type/TypeMirror;
    .end local v8    # "wt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_2
    goto :goto_0

    .line 566
    :cond_3
    return-object p0
.end method

.method public static createHierarchyMap(Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/type/QualifierHierarchy;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 4
    .param p0, "annos"    # Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .param p1, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 377
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 378
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 381
    :cond_0
    return-object v0
.end method

.method public static getArgumentTypes(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/List;
    .locals 6
    .param p0, "methodInvocation"    # Lcom/sun/source/tree/ExpressionTree;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 82
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .local v0, "argTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    goto :goto_0

    .line 84
    .end local v0    # "argTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_0
    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_3

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 94
    .restart local v0    # "argTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v1, "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 96
    .local v3, "arg":Lcom/sun/source/tree/Tree;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 97
    .local v4, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v3    # "arg":Lcom/sun/source/tree/Tree;
    .end local v4    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    goto :goto_1

    .line 104
    :cond_2
    return-object v1

    .line 88
    .end local v0    # "argTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v1    # "argTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeArgumentInference.relationsFromMethodArguments:\ncouldn\'t determine arguments from tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMappingFromReturnType(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/type/ExecutableType;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/util/Map;
    .locals 5
    .param p0, "methodInvocationTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p1, "methodType"    # Ljavax/lang/model/type/ExecutableType;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Ljavax/lang/model/type/ExecutableType;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 602
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 603
    .local v0, "methodCallType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 604
    .local v1, "types":Ljavax/lang/model/util/Types;
    new-instance v2, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;

    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;-><init>(Ljava/util/List;Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;)V

    .line 605
    .local v2, "mapping":Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->visit(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Void;

    .line 606
    iget-object v3, v2, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$GetMapping;->subs:Ljava/util/Map;

    return-object v3
.end method

.method public static isATarget(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)Z"
        }
    .end annotation

    .line 113
    .local p1, "targetTypeVars":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 114
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method

.method private static isArgument(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 4
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "argumentTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 272
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 274
    return v1

    .line 275
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 276
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 278
    .local v0, "conditionalExpressionTree":Lcom/sun/source/tree/ConditionalExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->isArgument(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    invoke-interface {v0}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->isArgument(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 278
    :goto_1
    return v1

    .line 281
    .end local v0    # "conditionalExpressionTree":Lcom/sun/source/tree/ConditionalExpressionTree;
    :cond_3
    return v3
.end method

.method public static leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/Iterable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/lang/Iterable<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 507
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    .local v0, "typesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 512
    .local v1, "lubType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v2, 0x0

    .line 513
    .local v2, "nextType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 516
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    goto :goto_1

    .line 520
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getBoxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 525
    :cond_1
    :goto_1
    invoke-static {p0, v1, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    goto :goto_0

    .line 528
    :cond_2
    return-object v1

    .line 509
    .end local v1    # "lubType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "nextType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Calling LUB on empty list"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static methodTypeToTargets(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;
    .locals 5
    .param p0, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "annotatedTypeVars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 127
    .local v1, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/type/TypeVariable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 128
    .local v3, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 129
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeVariable;

    .line 128
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 132
    :cond_0
    return-object v1
.end method

.method public static substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "toModify"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 483
    .local p0, "substitutions":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 484
    nop

    .line 488
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 485
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .local v0, "substitution":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 490
    .end local v0    # "substitution":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    const/4 v0, 0x0

    .line 492
    .restart local v0    # "substitution":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 496
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 497
    .local v1, "toModifyCopy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v2, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v2, p0, v1}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 498
    return-object v1
.end method

.method public static substitute(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;
    .param p1, "substitution"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "toModify"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 466
    sget-object v0, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substituteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 467
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 470
    .local v1, "toModifyCopy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v2, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;->substitutor:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substitute(Ljava/util/Map;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 471
    return-object v1
.end method
