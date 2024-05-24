.class public Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "MethodValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MethodValTreeAnnotator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    const-class v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 219
    iput-object p1, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 220
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 221
    return-void
.end method

.method private getConstructorParamsLen(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 308
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    .local v0, "numParams":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->getNumberOfParameterOneArg(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 312
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getMethodParamsLen(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 296
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 300
    .local v0, "numParams":I
    if-ne v0, v1, :cond_0

    .line 301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-direct {p0, v1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->getNumberOfParameterOneArg(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "numParams":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "getMethod must have at least one parameter"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getNumberOfParameterOneArg(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;
    .locals 7
    .param p1, "argument"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 329
    .local v0, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v1, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 329
    packed-switch v1, :pswitch_data_0

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 347
    :pswitch_0
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 331
    :pswitch_1
    iget-object v1, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/common/value/ValueChecker;

    .line 332
    invoke-virtual {v1, v4}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 333
    .local v1, "valueATF":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    invoke-virtual {v1, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 334
    .local v4, "valueAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v5, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 335
    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 336
    .local v3, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    const-string v5, "value"

    const-class v6, Ljava/lang/Integer;

    invoke-static {v3, v5, v6, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 338
    .end local v3    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    const-class v2, Lorg/checkerframework/common/value/qual/BottomVal;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 340
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 343
    :cond_1
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isGetConstructorMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 284
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/GetConstructor;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGetMethodMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 292
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/GetMethod;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 16
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->isGetConstructorMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "<init>"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->getConstructorParamsLen(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 240
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 241
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Z)Ljava/util/List;

    move-result-object v5

    .local v5, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 243
    .end local v2    # "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->isGetMethodMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 245
    .local v2, "methodNameArg":Lcom/sun/source/tree/ExpressionTree;
    iget-object v5, v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {v5, v2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$200(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v5

    .line 246
    .local v5, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->getMethodParamsLen(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 247
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 248
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Z)Ljava/util/List;

    move-result-object v2

    .line 249
    .local v2, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v6

    move-object v15, v5

    move-object v5, v2

    move-object v2, v15

    .line 255
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_4

    .line 262
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v6, "methodSigs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 267
    .local v8, "methodName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 268
    .local v10, "className":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 269
    .local v12, "param":Ljava/lang/Integer;
    new-instance v13, Lorg/checkerframework/common/reflection/MethodSignature;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v10, v8, v14}, Lorg/checkerframework/common/reflection/MethodSignature;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v12    # "param":Ljava/lang/Integer;
    goto :goto_3

    .line 271
    .end local v10    # "className":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 272
    .end local v8    # "methodName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 274
    :cond_4
    iget-object v7, v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {v7, v6}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Ljava/util/Set;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 275
    .local v7, "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 276
    return-object v3

    .line 258
    .end local v6    # "methodSigs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    .end local v7    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    :goto_4
    iget-object v6, v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    invoke-static {v6}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->access$300(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 259
    return-object v3

    .line 251
    .end local v2    # "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return-object v3
.end method
