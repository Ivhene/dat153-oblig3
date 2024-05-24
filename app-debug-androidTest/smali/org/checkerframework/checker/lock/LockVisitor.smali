.class public Lorg/checkerframework/checker/lock/LockVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "LockVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final SELF_RECEIVER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final checkerGuardSatisfiedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final checkerGuardedByClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    nop

    .line 81
    const-string v0, "^<self>(\\.(.*))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/lock/LockVisitor;->SELF_RECEIVER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 84
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 78
    const-class v0, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardedByClass:Ljava/lang/Class;

    .line 79
    const-class v0, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 85
    return-void
.end method

.method private checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "gbAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLockOfThisOrTree(Lcom/sun/source/tree/Tree;ZLjavax/lang/model/element/AnnotationMirror;)V

    .line 1182
    return-void
.end method

.method private checkLockOfImplicitThis(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "gbAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1177
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLockOfThisOrTree(Lcom/sun/source/tree/Tree;ZLjavax/lang/model/element/AnnotationMirror;)V

    .line 1178
    return-void
.end method

.method private checkLockOfThisOrTree(Lcom/sun/source/tree/Tree;ZLjavax/lang/model/element/AnnotationMirror;)V
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "implicitThis"    # Z
    .param p3, "gbAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1185
    if-eqz p3, :cond_9

    .line 1188
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardedByUnknown;

    invoke-virtual {v0, p3, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "lock.not.held"

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardedByBottom;

    .line 1189
    invoke-virtual {v0, p3, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    invoke-virtual {v0, p3, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    return-void

    .line 1196
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lorg/checkerframework/checker/lock/LockVisitor;->getLockExpressions(ZLjavax/lang/model/element/AnnotationMirror;Lcom/sun/source/tree/Tree;)Ljava/util/List;

    move-result-object v0

    .line 1197
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1198
    return-void

    .line 1201
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/lock/LockStore;

    .line 1202
    .local v2, "store":Lorg/checkerframework/checker/lock/LockStore;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;

    .line 1203
    .local v4, "expression":Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const-string v6, "expression.unparsable.type.invalid"

    if-eqz v5, :cond_3

    .line 1204
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v7, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 1206
    invoke-virtual {v7}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1205
    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 1204
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 1208
    :cond_3
    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    if-nez v5, :cond_4

    .line 1209
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v7, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->expressionString:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1210
    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 1209
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 1213
    :cond_4
    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-direct {p0, v5, v2}, Lorg/checkerframework/checker/lock/LockVisitor;->isLockHeld(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/checker/lock/LockStore;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1214
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v6, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1215
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 1214
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1219
    :cond_5
    :goto_1
    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    if-eqz v5, :cond_6

    .line 1220
    iget-object v5, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v6, v4, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->expressionString:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p1}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;Lcom/sun/source/tree/Tree;)V

    .line 1223
    .end local v4    # "expression":Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
    :cond_6
    goto :goto_0

    .line 1224
    :cond_7
    return-void

    .line 1190
    .end local v0    # "expressions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;>;"
    .end local v2    # "store":Lorg/checkerframework/checker/lock/LockStore;
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1191
    return-void

    .line 1186
    :cond_9
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "LockVisitor.checkLock: gbAnno cannot be null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPreconditionsForImplicitToStringCall(Lcom/sun/source/tree/ExpressionTree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 1169
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 1171
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    .line 1172
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1173
    .local v0, "gbAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1174
    return-void
.end method

.method private ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V
    .locals 5
    .param p1, "lockExpressionTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 894
    move-object v0, p1

    .line 897
    .local v0, "tree":Lcom/sun/source/tree/ExpressionTree;
    :goto_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 899
    sget-object v1, Lorg/checkerframework/checker/lock/LockVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "lock.expression.not.final"

    packed-switch v1, :pswitch_data_0

    .line 935
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 936
    const-string v3, "lock.expression.possibly.not.final"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 935
    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 939
    return-void

    .line 917
    :pswitch_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 918
    .local v1, "elem":Ljavax/lang/model/element/Element;
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/dataflow/qual/Deterministic;

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotationNoAliases(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/dataflow/qual/Pure;

    .line 919
    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotationNoAliases(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    if-nez v3, :cond_0

    .line 920
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    .line 921
    invoke-static {v2, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 920
    invoke-virtual {v3, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 923
    return-void

    .line 926
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/MethodInvocationTree;

    .line 928
    .local v2, "methodInvocationTree":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 929
    .local v4, "argTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V

    .line 930
    .end local v4    # "argTree":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_1

    .line 932
    :cond_1
    invoke-interface {v2}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 933
    goto :goto_0

    .line 910
    .end local v1    # "elem":Ljavax/lang/model/element/Element;
    .end local v2    # "methodInvocationTree":Lcom/sun/source/tree/MethodInvocationTree;
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->isTreeSymbolEffectivelyFinalOrUnmodifiable(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 911
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 912
    invoke-static {v2, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 911
    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 915
    :cond_2
    return-void

    .line 901
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->isTreeSymbolEffectivelyFinalOrUnmodifiable(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 902
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 903
    invoke-static {v2, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 902
    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 905
    return-void

    .line 907
    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 908
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureExpressionIsEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/lang/String;Lcom/sun/source/tree/Tree;)V
    .locals 3
    .param p1, "lockExpr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "expressionForErrorReporting"    # Ljava/lang/String;
    .param p3, "treeForErrorReporting"    # Lcom/sun/source/tree/Tree;

    .line 948
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 950
    const-string v2, "lock.expression.not.final"

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 953
    :cond_0
    return-void
.end method

.method private ensureReceiverOfExplicitUnlockCallIsEffectivelyFinal(Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/ExpressionTree;)V
    .locals 5
    .param p1, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "lockExpression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 788
    if-nez p2, :cond_0

    .line 791
    return-void

    .line 794
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "unlock"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    return-void

    .line 798
    :cond_1
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 800
    .local v0, "lockExpressionType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 802
    .local v1, "processingEnvironment":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 806
    .local v2, "types":Ljavax/lang/model/util/Types;
    const-class v3, Ljava/util/concurrent/locks/Lock;

    .line 808
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    .line 807
    invoke-static {v3, v2, v4}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 810
    .local v3, "lockInterfaceTypeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v2, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 811
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V

    .line 813
    :cond_2
    return-void
.end method

.method private getLockExpressions(ZLjavax/lang/model/element/AnnotationMirror;Lcom/sun/source/tree/Tree;)Ljava/util/List;
    .locals 11
    .param p1, "implicitThis"    # Z
    .param p2, "gbAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;",
            ">;"
        }
    .end annotation

    .line 1244
    const-class v0, Ljava/lang/String;

    .line 1245
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 1247
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 1252
    .local v1, "currentPath":Lcom/sun/source/util/TreePath;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 1253
    invoke-static {v2, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v2

    .line 1255
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 1256
    .local v3, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    nop

    .line 1257
    invoke-static {v1, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 1258
    .local v4, "pseudoReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v5, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 1259
    invoke-virtual {v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v6

    invoke-direct {v5, v4, v2, v6}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 1261
    .local v5, "exprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    if-eqz p1, :cond_1

    .line 1262
    move-object v6, v4

    .local v6, "self":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 1263
    .end local v6    # "self":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1264
    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-object v7, p3

    check-cast v7, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v6, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .restart local v6    # "self":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 1266
    .end local v6    # "self":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    new-instance v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 1269
    .restart local v6    # "self":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v7, "lockExpressions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1271
    .local v9, "expression":Ljava/lang/String;
    invoke-direct {p0, v9, v5, v1, v6}, Lorg/checkerframework/checker/lock/LockVisitor;->parseExpressionString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    .end local v9    # "expression":Ljava/lang/String;
    goto :goto_1

    .line 1273
    :cond_3
    return-object v7
.end method

.method private getPathForLocalVariableRetrieval(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 5
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 1044
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/source/tree/AnnotationTree;

    if-eqz v0, :cond_2

    .line 1051
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 1053
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1054
    return-object v0

    .line 1061
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p1

    .line 1063
    if-nez p1, :cond_1

    .line 1064
    return-object v0

    .line 1067
    :cond_1
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 1068
    .local v1, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    .line 1070
    .local v2, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v3, Lorg/checkerframework/checker/lock/LockVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1085
    return-object v0

    .line 1083
    :sswitch_0
    return-object p1

    .line 1044
    .end local v1    # "tree":Lcom/sun/source/tree/Tree;
    .end local v2    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private isLockHeld(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/checker/lock/LockStore;)Z
    .locals 7
    .param p1, "lock"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "store"    # Lorg/checkerframework/checker/lock/LockStore;

    .line 1227
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1228
    return v0

    .line 1230
    :cond_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/checker/lock/LockStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v1

    .line 1231
    .local v1, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    if-nez v1, :cond_1

    .line 1232
    return v0

    .line 1234
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 1235
    .local v2, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v3

    .line 1236
    .local v3, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    .line 1237
    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 1238
    .local v4, "lockAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v6, Lorg/checkerframework/checker/lock/qual/LockHeld;

    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isTreeSymbolEffectivelyFinalOrUnmodifiable(Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1094
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1095
    .local v0, "elem":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    .line 1096
    .local v1, "ek":Ljavax/lang/model/element/ElementKind;
    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    .line 1099
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1096
    :goto_1
    return v2
.end method

.method private issueErrorIfGuardSatisfiedAnnotationInUnsupportedLocation(Lcom/sun/source/tree/AnnotationTree;)V
    .locals 11
    .param p1, "annotationTree"    # Lcom/sun/source/tree/AnnotationTree;

    .line 984
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 985
    .local v0, "currentPath":Lcom/sun/source/util/TreePath;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->getPathForLocalVariableRetrieval(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 986
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-eqz v1, :cond_5

    .line 987
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 988
    .local v2, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 990
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_0

    .line 992
    return-void

    .line 993
    :cond_0
    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_5

    .line 994
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 995
    .local v4, "varTree":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 996
    .local v5, "varTypeTree":Lcom/sun/source/tree/Tree;
    if-eqz v5, :cond_5

    .line 997
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v6

    .line 998
    .local v6, "parentPath":Lcom/sun/source/util/TreePath;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_5

    .line 999
    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    .line 1000
    .local v7, "varTypeTreeKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_3

    .line 1001
    move-object v8, v5

    check-cast v8, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 1003
    .local v8, "annotatedTypeTree":Lcom/sun/source/tree/AnnotatedTypeTree;
    invoke-interface {v8}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    invoke-interface {v9}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v10, :cond_2

    .line 1006
    invoke-interface {v8}, Lcom/sun/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v9

    .line 1007
    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .end local v8    # "annotatedTypeTree":Lcom/sun/source/tree/AnnotatedTypeTree;
    :cond_1
    goto :goto_1

    .line 1009
    .restart local v8    # "annotatedTypeTree":Lcom/sun/source/tree/AnnotatedTypeTree;
    :cond_2
    :goto_0
    return-void

    .line 1011
    .end local v8    # "annotatedTypeTree":Lcom/sun/source/tree/AnnotatedTypeTree;
    :cond_3
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v7, v8, :cond_4

    .line 1013
    return-void

    .line 1011
    :cond_4
    :goto_1
    nop

    .line 1020
    .end local v2    # "tree":Lcom/sun/source/tree/Tree;
    .end local v3    # "kind":Lcom/sun/source/tree/Tree$Kind;
    .end local v4    # "varTree":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "varTypeTree":Lcom/sun/source/tree/Tree;
    .end local v6    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v7    # "varTypeTreeKind":Lcom/sun/source/tree/Tree$Kind;
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "guardsatisfied.location.disallowed"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1021
    return-void
.end method

.method private issueErrorIfMoreThanOneGuardedByAnnotationPresent(Lcom/sun/source/tree/VariableTree;)V
    .locals 6
    .param p1, "variableTree"    # Lcom/sun/source/tree/VariableTree;

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "guardedByAnnotationCount":I
    nop

    .line 130
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 132
    .local v3, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const-string v4, "net.jcip.annotations.GuardedBy"

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const-string v4, "javax.annotation.concurrent.GuardedBy"

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 137
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 138
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "multiple.guardedby.annotations"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 139
    return-void

    .line 142
    .end local v3    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method

.method private issueErrorIfMoreThanOneLockPreconditionMethodAnnotationPresent(Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/MethodTree;)V
    .locals 4
    .param p1, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "treeForErrorReporting"    # Lcom/sun/source/tree/MethodTree;

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "lockPreconditionAnnotationCount":I
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/lock/qual/Holding;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 237
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->jcipGuardedBy:Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->jcipGuardedBy:Ljava/lang/Class;

    .line 238
    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->javaxGuardedBy:Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->javaxGuardedBy:Ljava/lang/Class;

    .line 245
    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_2
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 253
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 254
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    const-string v3, "multiple.lock.precondition.annotations"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 258
    :cond_3
    return-void
.end method

.method private parseExpressionString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
    .locals 8
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "flowExprContext"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;
    .param p4, "itself"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1282
    new-instance v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;

    invoke-direct {v0, p1}, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v0, "lockExpression":Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
    invoke-static {p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-static {p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->unparse(Ljava/lang/String;)Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 1285
    return-object v0

    .line 1288
    :cond_0
    sget-object v1, Lorg/checkerframework/checker/lock/LockVisitor;->SELF_RECEIVER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1290
    .local v1, "selfReceiverMatcher":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 1291
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .local v2, "remainingExpression":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "lock.expression.not.final"

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1313
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1314
    invoke-static {v6, p2, p3, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    iput-object v6, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1319
    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v6, v7}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1320
    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    aput-object v7, v3, v4

    .line 1321
    invoke-static {v5, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 1323
    invoke-virtual {p3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 1320
    invoke-virtual {v6, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1325
    :cond_2
    return-object v0

    .line 1293
    :cond_3
    :goto_0
    iput-object p4, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1294
    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v6, v7}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->isExpressionEffectivelyFinal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1295
    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    aput-object v7, v3, v4

    .line 1296
    invoke-static {v5, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 1298
    invoke-virtual {p3}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 1295
    invoke-virtual {v6, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1300
    :cond_4
    return-object v0

    .line 1328
    .end local v2    # "remainingExpression":Ljava/lang/String;
    :cond_5
    nop

    .line 1329
    invoke-static {p1, p2, p3, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    iput-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :try_end_1
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1330
    return-object v0

    .line 1332
    :catch_0
    move-exception v2

    .line 1333
    .local v2, "ex":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    new-instance v3, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    invoke-direct {v3, p1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    iput-object v3, v0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 1334
    return-object v0
.end method

.method private reportFailure(Ljava/lang/String;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "messageKey"    # Ljava/lang/String;
    .param p2, "overriderTree"    # Lcom/sun/source/tree/MethodTree;
    .param p3, "enclosingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p4, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/source/tree/MethodTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p6, "overriderLocks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "overriddenLocks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    .line 468
    .local v3, "overrider":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v4

    .end local p4    # "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v4, "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    goto :goto_0

    .line 471
    .end local v4    # "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local p4    # "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_0
    move-object/from16 v4, p4

    .end local p4    # "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .restart local v4    # "overridden":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :goto_0
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v11

    .line 472
    .local v11, "overriderMeth":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, "overriderTyp":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v13

    .line 474
    .local v13, "overriddenMeth":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 476
    .local v14, "overriddenTyp":Ljava/lang/String;
    if-eqz p6, :cond_2

    if-nez p7, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    iget-object v15, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 483
    invoke-static {v1, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 482
    invoke-virtual {v15, v5, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_2

    .line 477
    :cond_2
    :goto_1
    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v6

    .line 478
    invoke-static {v1, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 477
    invoke-virtual {v5, v6, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 493
    :goto_2
    return-void
.end method


# virtual methods
.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 337
    nop

    .line 339
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 340
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 341
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V

    .line 344
    :cond_0
    return-void
.end method

.method protected checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 13
    .param p1, "overriderTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "enclosingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p4, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 506
    move-object v8, p0

    const/4 v0, 0x1

    .line 508
    .local v0, "isValid":Z
    iget-object v1, v8, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 510
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 509
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v10

    .line 511
    .local v10, "seaOfOverriderMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    iget-object v1, v8, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 512
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v11

    .line 514
    .local v11, "seaOfOverridenMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    invoke-virtual {v10, v11}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const/4 v12, 0x0

    .line 516
    .end local v0    # "isValid":Z
    .local v12, "isValid":Z
    const-string v1, "override.sideeffect.invalid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/checker/lock/LockVisitor;->reportFailure(Ljava/lang/String;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;Ljava/util/List;)V

    move v0, v12

    .line 526
    .end local v12    # "isValid":Z
    .restart local v0    # "isValid":Z
    :cond_0
    invoke-super/range {p0 .. p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 6
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 353
    invoke-interface {p3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 355
    .local v0, "valueTreeKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lorg/checkerframework/checker/lock/LockVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v0}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardedByBottom;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    return-void

    .line 360
    :pswitch_1
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardedByBottom;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    return-void

    .line 387
    :cond_0
    :goto_0
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardedBy;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 390
    return-void

    .line 391
    :cond_1
    const-class v1, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    const-string v1, "argument.type.incompatible"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v1

    .line 402
    .local v1, "varTypeGuardSatisfiedIndex":I
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 403
    invoke-virtual {v2, p2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v2

    .line 405
    .local v2, "valueTypeGuardSatisfiedIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-ne v2, v3, :cond_2

    .line 406
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    .line 407
    const-string v5, "guardsatisfied.assignment.disallowed"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 406
    invoke-virtual {v3, v4, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 411
    .end local v1    # "varTypeGuardSatisfiedIndex":I
    .end local v2    # "valueTypeGuardSatisfiedIndex":I
    :cond_2
    goto :goto_1

    .line 422
    :cond_3
    return-void

    .line 424
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 428
    nop

    .line 429
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 430
    .local v1, "varType2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 431
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    return-void

    .line 437
    .end local v1    # "varType2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 438
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createTypeFactory()Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
    .locals 2

    .line 147
    new-instance v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method public bridge synthetic createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockVisitor;->createTypeFactory()Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 320
    invoke-virtual {v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 321
    .local v0, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 322
    .local v1, "annotationSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 323
    .local v3, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v3    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    .line 329
    :cond_1
    return-object v1
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method protected skipReceiverSubtypeCheck(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p1, "methodInvocationTree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "methodDefinitionReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "methodCallReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 279
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 280
    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 281
    .local v0, "primaryGb":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 282
    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 287
    .local v1, "effectiveGb":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 288
    invoke-virtual {v3, v0, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 290
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 292
    .local v3, "primaryGbOnMethodDefinition":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 293
    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    return v2

    .line 299
    .end local v3    # "primaryGbOnMethodDefinition":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardedByClass:Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 301
    .local v3, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 302
    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotationByClass(Ljava/util/Collection;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 303
    .local v4, "guardSatisfied":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_2

    .line 304
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 305
    .local v5, "receiverTree":Lcom/sun/source/tree/ExpressionTree;
    if-nez v5, :cond_1

    .line 306
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLockOfImplicitThis(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, v5, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 310
    :goto_0
    return v2

    .line 314
    .end local v3    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "guardSatisfied":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "receiverTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 958
    .local v0, "annotationTreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/source/tree/AnnotationTree;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    nop

    .line 960
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 962
    .local v1, "amList":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v1, :cond_1

    .line 963
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 964
    .local v3, "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/lock/LockVisitor;->issueErrorIfGuardSatisfiedAnnotationInUnsupportedLocation(Lcom/sun/source/tree/AnnotationTree;)V

    .line 967
    .end local v3    # "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 970
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 532
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 533
    .local v0, "atmOfReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 534
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 535
    .local v1, "gb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 536
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "binaryTree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1124
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1126
    .local v0, "leftTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 1128
    .local v1, "rightTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    .line 1129
    .local v2, "lhsIsString":Z
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    .line 1130
    .local v3, "rhsIsString":Z
    if-nez v2, :cond_0

    .line 1131
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->checkPreconditionsForImplicitToStringCall(Lcom/sun/source/tree/ExpressionTree;)V

    goto :goto_0

    .line 1132
    :cond_0
    if-nez v3, :cond_1

    .line 1133
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkPreconditionsForImplicitToStringCall(Lcom/sun/source/tree/ExpressionTree;)V

    .line 1137
    .end local v0    # "leftTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "rightTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "lhsIsString":Z
    .end local v3    # "rhsIsString":Z
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1142
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringCompoundConcatenation(Lcom/sun/source/tree/CompoundAssignmentTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1144
    .local v0, "rightTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/lock/LockVisitor;->checkPreconditionsForImplicitToStringCall(Lcom/sun/source/tree/ExpressionTree;)V

    .line 1149
    .end local v0    # "rightTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 1106
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1110
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    .line 1111
    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1112
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 1114
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    .line 1115
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1116
    .local v1, "guardedBy":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLockOfImplicitThis(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1119
    .end local v0    # "parent":Lcom/sun/source/tree/Tree;
    .end local v1    # "guardedBy":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 442
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 446
    .local v0, "atmOfReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    .line 447
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 448
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 450
    .local v1, "gb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/lock/LockVisitor;->checkLock(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 454
    .end local v0    # "atmOfReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "gb":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 160
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 162
    .local v0, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-direct {p0, v0, p1}, Lorg/checkerframework/checker/lock/LockVisitor;->issueErrorIfMoreThanOneLockPreconditionMethodAnnotationPresent(Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/MethodTree;)V

    .line 164
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v1

    .line 166
    .local v1, "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    sget-object v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 167
    const/4 v2, 0x0

    .line 169
    .local v2, "issueGSwithMRLWarning":Z
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v4

    .line 170
    .local v4, "receiver":Lcom/sun/source/tree/VariableTree;
    if-eqz v4, :cond_0

    .line 171
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 172
    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 173
    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 178
    :cond_0
    if-nez v2, :cond_2

    .line 179
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    .line 180
    .local v6, "vt":Lcom/sun/source/tree/VariableTree;
    iget-object v7, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 181
    invoke-virtual {v7, v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    iget-object v8, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 182
    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    const/4 v2, 0x1

    .line 184
    goto :goto_1

    .line 186
    .end local v6    # "vt":Lcom/sun/source/tree/VariableTree;
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 190
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "guardsatisfied.with.mayreleaselocks"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 196
    .end local v2    # "issueGSwithMRLWarning":Z
    .end local v4    # "receiver":Lcom/sun/source/tree/VariableTree;
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v4, :cond_4

    .line 197
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 199
    .local v2, "returnTypeATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v2, :cond_4

    const-class v4, Lorg/checkerframework/checker/lock/qual/GuardSatisfied;

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v4, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v4

    .line 202
    .local v4, "returnGuardSatisfiedIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 203
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "guardsatisfied.return.must.have.index"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 208
    .end local v2    # "returnTypeATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "returnGuardSatisfiedIndex":I
    :cond_4
    sget-object v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->LOCKINGFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 209
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "lockingfree.synchronized.method"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 213
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 28
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 570
    .local v2, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    iget-object v3, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 571
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v3

    .line 573
    .local v3, "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v5, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v5

    .line 575
    .local v5, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    const/4 v6, 0x0

    .line 576
    .local v6, "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v5, :cond_0

    .line 577
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v6

    .line 580
    :cond_0
    if-eqz v6, :cond_1

    .line 581
    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 582
    invoke-virtual {v7, v6, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v7

    .line 584
    .local v7, "seaOfContainingMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    invoke-virtual {v3, v7}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 585
    iget-object v8, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 588
    invoke-virtual {v7}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->getNameOfSideEffectAnnotation()Ljava/lang/String;

    move-result-object v9

    .line 589
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 590
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 591
    invoke-virtual {v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->getNameOfSideEffectAnnotation()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 586
    const-string v10, "method.guarantee.violated"

    invoke-static {v10, v9}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v9

    .line 585
    invoke-virtual {v8, v9, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 596
    .end local v7    # "seaOfContainingMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_1
    if-eqz v2, :cond_6

    .line 599
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    .line 601
    .local v7, "recvTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {v0, v2, v7}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureReceiverOfExplicitUnlockCallIsEffectivelyFinal(Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/ExpressionTree;)V

    .line 612
    iget-object v8, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v9, Lorg/checkerframework/checker/lock/qual/EnsuresLockHeld;

    .line 613
    invoke-virtual {v8, v2, v9}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 614
    .local v8, "ensuresLockHeldAnno":Ljavax/lang/model/element/AnnotationMirror;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v9, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 617
    const-class v10, Ljava/lang/String;

    .line 618
    const-string v11, "value"

    invoke-static {v8, v11, v10, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v10

    .line 617
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    :cond_2
    iget-object v10, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v10, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    const-class v11, Lorg/checkerframework/checker/lock/qual/EnsuresLockHeldIf;

    .line 623
    invoke-virtual {v10, v2, v11}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v10

    .line 625
    .local v10, "ensuresLockHeldIfAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v10, :cond_3

    .line 626
    const-class v11, Ljava/lang/String;

    .line 627
    const-string v12, "expression"

    invoke-static {v10, v12, v11, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v11

    .line 626
    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 632
    .local v12, "expr":Ljava/lang/String;
    const-string v13, "this"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 635
    if-eqz v7, :cond_5

    .line 636
    invoke-direct {v0, v7}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V

    goto :goto_1

    .line 638
    :cond_4
    const-string v13, "#1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 639
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/source/tree/ExpressionTree;

    .line 640
    .local v13, "firstParameter":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v13, :cond_5

    .line 641
    invoke-direct {v0, v13}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V

    .line 644
    .end local v12    # "expr":Ljava/lang/String;
    .end local v13    # "firstParameter":Lcom/sun/source/tree/ExpressionTree;
    :cond_5
    :goto_1
    goto :goto_0

    .line 650
    .end local v7    # "recvTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v8    # "ensuresLockHeldAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v9    # "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "ensuresLockHeldIfAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_6
    iget-object v7, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v7, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v7

    .line 651
    .local v7, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v8, v7, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 653
    .local v8, "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v9, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 654
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 662
    .local v9, "requiredArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    nop

    .line 663
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [I

    .line 667
    .local v10, "guardSatisfiedIndex":[I
    const/4 v11, -0x1

    aput v11, v10, v4

    .line 669
    const/4 v12, 0x0

    .line 670
    .local v12, "methodDefinitionReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v13, 0x0

    .line 672
    .local v13, "methodCallReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v14

    .line 673
    .local v14, "invokedMethodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {v14}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 674
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v15

    invoke-interface {v15}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v15

    sget-object v11, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v15, v11, :cond_7

    .line 675
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v12

    .line 676
    if-eqz v12, :cond_7

    iget-object v11, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 677
    invoke-virtual {v12, v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 678
    iget-object v11, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v11, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 679
    invoke-virtual {v11, v12}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v11

    aput v11, v10, v4

    .line 680
    iget-object v4, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v13

    .line 686
    :cond_7
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 687
    add-int/lit8 v11, v4, 0x1

    const/4 v15, -0x1

    aput v15, v10, v11

    .line 689
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 691
    .local v11, "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v15, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    invoke-virtual {v11, v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 692
    add-int/lit8 v15, v4, 0x1

    move-object/from16 v16, v2

    .end local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .local v16, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    iget-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v2, v11}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v2

    aput v2, v10, v15

    goto :goto_3

    .line 691
    .end local v16    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_8
    move-object/from16 v16, v2

    .line 686
    .end local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v11    # "arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v16    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    .end local v16    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_9
    move-object/from16 v16, v2

    .line 698
    .end local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v4    # "i":I
    .restart local v16    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v10

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 700
    .local v2, "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 701
    if-nez v13, :cond_a

    .line 702
    const/4 v4, 0x0

    goto :goto_4

    .line 703
    :cond_a
    iget-object v4, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v13, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 700
    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/ExpressionTree;

    .line 706
    .local v11, "tree":Lcom/sun/source/tree/ExpressionTree;
    iget-object v15, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v15, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 708
    invoke-virtual {v15, v11}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v15

    move-object/from16 v17, v3

    .end local v3    # "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .local v17, "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    iget-object v3, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 709
    invoke-virtual {v15, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 706
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v11    # "tree":Lcom/sun/source/tree/ExpressionTree;
    move-object/from16 v3, v17

    goto :goto_5

    .line 714
    .end local v17    # "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .restart local v3    # "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_b
    move-object/from16 v17, v3

    .end local v3    # "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .restart local v17    # "seaOfInvokedMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v4, v10

    if-ge v3, v4, :cond_17

    .line 715
    aget v4, v10, v3

    const/4 v11, -0x1

    if-eq v4, v11, :cond_16

    .line 716
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_7
    array-length v11, v10

    if-ge v4, v11, :cond_15

    .line 717
    aget v11, v10, v3

    aget v15, v10, v4

    if-ne v11, v15, :cond_14

    .line 720
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/AnnotationMirror;

    .line 721
    .local v11, "arg1Anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/lang/model/element/AnnotationMirror;

    .line 722
    .local v15, "arg2Anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v11, :cond_13

    if-eqz v15, :cond_13

    .line 723
    const/16 v18, 0x0

    .line 725
    .local v18, "bothAreGSwithNoIndex":Z
    move-object/from16 v24, v2

    .end local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v24, "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    move-object/from16 v25, v5

    .end local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .local v25, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    invoke-virtual {v2, v11, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checkerGuardSatisfiedClass:Ljava/lang/Class;

    .line 726
    invoke-virtual {v2, v15, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 728
    iget-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v2, v11}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    iget-object v2, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 729
    invoke-virtual {v2, v15}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getGuardSatisfiedIndex(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v2

    if-ne v2, v5, :cond_e

    .line 734
    const/16 v18, 0x1

    move/from16 v2, v18

    goto :goto_9

    .line 726
    :cond_c
    const/4 v5, -0x1

    goto :goto_8

    .line 725
    :cond_d
    const/4 v5, -0x1

    .line 738
    :cond_e
    :goto_8
    move/from16 v2, v18

    .end local v18    # "bothAreGSwithNoIndex":Z
    .local v2, "bothAreGSwithNoIndex":Z
    :goto_9
    if-nez v2, :cond_11

    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 740
    invoke-virtual {v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    .line 741
    invoke-virtual {v5, v11, v15}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 743
    invoke-virtual {v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v5

    .line 744
    invoke-virtual {v5, v15, v11}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v27, v6

    goto/16 :goto_c

    .line 741
    :cond_10
    move-object/from16 v27, v6

    goto :goto_c

    .line 747
    :cond_11
    :goto_a
    const/4 v5, 0x0

    .line 749
    .local v5, "formalParam1":Ljava/lang/String;
    if-nez v3, :cond_12

    .line 750
    const-string v5, "The receiver type"

    move/from16 v26, v2

    goto :goto_b

    .line 752
    :cond_12
    move/from16 v26, v2

    .end local v2    # "bothAreGSwithNoIndex":Z
    .local v26, "bothAreGSwithNoIndex":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "formalParam1":Ljava/lang/String;
    .local v18, "formalParam1":Ljava/lang/String;
    const-string v5, "Parameter #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 757
    .end local v18    # "formalParam1":Ljava/lang/String;
    .restart local v5    # "formalParam1":Ljava/lang/String;
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    .end local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .local v27, "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    const-string v6, "parameter #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "formalParam2":Ljava/lang/String;
    iget-object v6, v0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 765
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v20

    aget v18, v10, v3

    .line 766
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v22, v11

    move-object/from16 v23, v15

    filled-new-array/range {v18 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    .line 761
    move-object/from16 v18, v2

    .end local v2    # "formalParam2":Ljava/lang/String;
    .local v18, "formalParam2":Ljava/lang/String;
    const-string v2, "guardsatisfied.parameters.must.match"

    invoke-static {v2, v0}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 760
    invoke-virtual {v6, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_c

    .line 722
    .end local v18    # "formalParam2":Ljava/lang/String;
    .end local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v26    # "bothAreGSwithNoIndex":Z
    .end local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .local v2, "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .local v5, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_13
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_c

    .line 717
    .end local v11    # "arg1Anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v15    # "arg2Anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_14
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .line 716
    .end local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    goto/16 :goto_7

    .end local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .end local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_d

    .line 715
    .end local v4    # "j":I
    .end local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_16
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    .line 714
    .end local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v24

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    goto/16 :goto_6

    .line 777
    .end local v3    # "i":I
    .end local v24    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v25    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v27    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "passedArgAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/lang/model/element/AnnotationMirror;>;"
    .restart local v5    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .restart local v6    # "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    :cond_17
    invoke-super/range {p0 .. p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "node"    # Lcom/sun/source/tree/SynchronizedTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 832
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 834
    .local v0, "processingEnvironment":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 838
    .local v1, "types":Ljavax/lang/model/util/Types;
    const-class v2, Ljava/util/concurrent/locks/Lock;

    .line 840
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    .line 839
    invoke-static {v2, v1, v3}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 842
    .local v2, "lockInterfaceTypeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 844
    .local v3, "synchronizedExpression":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/lock/LockVisitor;->ensureExpressionIsEffectivelyFinal(Lcom/sun/source/tree/ExpressionTree;)V

    .line 846
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 848
    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 847
    invoke-interface {v1, v4}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 850
    .local v4, "expressionType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1, v4, v2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 851
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "explicit.lock.synchronized"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v5, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 854
    :cond_0
    iget-object v5, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v5, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v5

    .line 856
    .local v5, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    const/4 v7, 0x0

    .line 857
    .local v7, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v5, :cond_1

    .line 858
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v7

    .line 860
    iget-object v8, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 861
    invoke-virtual {v8, v7, v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v6

    .line 863
    .local v6, "seaOfContainingMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    sget-object v8, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->LOCKINGFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v6, v8}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 864
    iget-object v8, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    .line 865
    const-string v10, "synchronized.block.in.lockingfree.method"

    invoke-static {v10, v9}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v9

    .line 864
    invoke-virtual {v8, v9, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 871
    .end local v6    # "seaOfContainingMethod":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Void;

    return-object v6
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 93
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 95
    .local v0, "tm":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 99
    .local v1, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDSATISFIED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotationRelaxed(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBY:Ljavax/lang/model/element/AnnotationMirror;

    .line 100
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotationRelaxed(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 101
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 102
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "immutable.type.guardedby"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 107
    .end local v1    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/lock/LockVisitor;->issueErrorIfMoreThanOneGuardedByAnnotationPresent(Lcom/sun/source/tree/VariableTree;)V

    .line 109
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method
