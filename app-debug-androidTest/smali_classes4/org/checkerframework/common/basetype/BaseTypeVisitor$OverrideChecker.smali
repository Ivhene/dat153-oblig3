.class public Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;
.super Ljava/lang/Object;
.source "BaseTypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverrideChecker"
.end annotation


# instance fields
.field protected final methodReference:Ljava/lang/Boolean;

.field protected final overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

.field protected final overriddenMeth:Ljava/lang/String;

.field protected final overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field protected final overriddenTyp:Ljava/lang/String;

.field protected final overriddenType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field protected final overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

.field protected final overriderMeth:Ljava/lang/String;

.field protected final overriderTree:Lcom/sun/source/tree/Tree;

.field protected final overriderTyp:Ljava/lang/String;

.field protected final overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field protected final overridingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field final synthetic this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "this$0"    # Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .param p2, "overriderTree"    # Lcom/sun/source/tree/Tree;
    .param p3, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p4, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "overridingReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p6, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p7, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p8, "overriddenReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3088
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iput-object p2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3091
    iput-object p3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3092
    iput-object p4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3093
    iput-object p6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3094
    iput-object p7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 3095
    iput-object p8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3096
    iput-object p5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3098
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    .line 3099
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 3100
    move-object v0, p4

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 3101
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 3102
    .local v0, "overriderTypeMirror":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    .line 3103
    .end local v0    # "overriderTypeMirror":Ljavax/lang/model/type/DeclaredType;
    goto :goto_0

    .line 3104
    :cond_0
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    .line 3106
    :goto_0
    invoke-virtual {p6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    .line 3107
    invoke-virtual {p7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    .line 3109
    invoke-interface {p2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    .line 3110
    return-void
.end method

.method private checkMemberReferenceReceivers()Z
    .locals 11

    .line 3247
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;

    .line 3249
    .local v0, "memberTree":Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 3254
    return v3

    .line 3258
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->kind:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v2, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v1, v2, :cond_2

    .line 3259
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 3260
    .local v1, "overriderReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3261
    .local v8, "overriddenReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3263
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v2

    .line 3264
    invoke-interface {v2, v8, v1}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v9

    .line 3265
    .local v9, "success":Z
    if-nez v9, :cond_1

    .line 3266
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v10, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v8

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 3267
    const-string v3, "methodref.receiver.invalid"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3266
    invoke-virtual {v10, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3277
    :cond_1
    return v9

    .line 3283
    .end local v1    # "overriderReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v8    # "overriddenReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "success":Z
    :cond_2
    sget-object v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->kind:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3324
    return v3

    .line 3308
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 3309
    .local v1, "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 3310
    .local v2, "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    nop

    .line 3311
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 3312
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 3313
    invoke-static {v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$500(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Ljavax/lang/model/util/Types;

    move-result-object v5

    .line 3310
    invoke-static {v3, v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3314
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    goto :goto_0

    .line 3295
    .end local v1    # "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_1
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 3296
    .restart local v1    # "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3297
    .restart local v2    # "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 3287
    .end local v1    # "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_2
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 3288
    .restart local v1    # "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3289
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 3291
    .restart local v2    # "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v3, v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    .line 3292
    .local v3, "selfType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 3293
    nop

    .line 3327
    .end local v3    # "selfType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v3, v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    .line 3328
    .local v3, "success":Z
    if-nez v3, :cond_4

    .line 3329
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v4, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    filled-new-array {v2, v5, v6, v2, v1}, [Ljava/lang/Object;

    move-result-object v5

    .line 3330
    const-string v6, "methodref.receiver.bound.invalid"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3329
    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3340
    :cond_4
    return v3

    .line 3285
    .end local v1    # "receiverDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "receiverArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "success":Z
    :pswitch_3
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Case UNBOUND should already be handled."

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkParameters()Z
    .locals 8

    .line 3386
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 3387
    .local v0, "overriderParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    .line 3391
    .local v1, "overriddenParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3394
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;

    sget-object v3, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    .line 3395
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->hasKind(Lcom/sun/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 3397
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3400
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isVarArgs()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isVarArgs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3401
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3402
    invoke-static {v2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgsFromTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3406
    :cond_1
    const/4 v2, 0x1

    .line 3407
    .local v2, "result":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3408
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v4, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 3410
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v4

    .line 3411
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v4, v5, v6}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    .line 3412
    .local v4, "success":Z
    if-nez v4, :cond_2

    .line 3413
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 3414
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->testTypevarContainment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    .line 3417
    :cond_2
    invoke-direct {p0, v4, v3, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkParametersMsg(ZILjava/util/List;Ljava/util/List;)V

    .line 3418
    and-int/2addr v2, v4

    .line 3407
    .end local v4    # "success":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3420
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private checkParametersMsg(ZILjava/util/List;Ljava/util/List;)V
    .locals 18
    .param p1, "success"    # Z
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 3428
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    .local p3, "overriderParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p4, "overriddenParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "methodref.param.invalid"

    goto :goto_0

    :cond_0
    const-string v4, "override.param.invalid"

    .line 3430
    .local v4, "msgKey":Ljava/lang/String;
    :goto_0
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    instance-of v5, v5, Lcom/sun/source/tree/MethodTree;

    if-eqz v5, :cond_1

    .line 3431
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v5, v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 3432
    invoke-static {v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$600(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    check-cast v7, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v7}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    .line 3431
    invoke-interface {v5, v6, v7}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v5

    goto :goto_1

    .line 3433
    :cond_1
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v5, v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$700(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    invoke-interface {v5, v6, v7}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v5

    :goto_1
    nop

    .line 3435
    .local v5, "valuePos":J
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    instance-of v8, v7, Lcom/sun/source/tree/MethodTree;

    if-eqz v8, :cond_2

    .line 3436
    check-cast v7, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v7}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    goto :goto_2

    .line 3437
    :cond_2
    nop

    :goto_2
    nop

    .line 3439
    .local v7, "posTree":Lcom/sun/source/tree/Tree;
    iget-object v8, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v8, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v9, "showchecks"

    invoke-virtual {v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3440
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    .line 3442
    if-eqz p1, :cond_3

    .line 3443
    const-string v10, "success: overridden parameter type is subtype of overriding"

    goto :goto_3

    .line 3444
    :cond_3
    const-string v10, "FAILURE: overridden parameter type is not subtype of overriding"

    :goto_3
    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 3445
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v10}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$800(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3446
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v10}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$900(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v10

    invoke-interface {v10, v5, v6}, Lcom/sun/source/tree/LineMap;->getLineNumber(J)J

    move-result-wide v10

    goto :goto_4

    .line 3447
    :cond_4
    const-wide/16 v10, -0x1

    .line 3445
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 3450
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    .line 3451
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const/4 v10, 0x6

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 3454
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v9, v11

    .line 3455
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v9, v11

    .line 3440
    const-string v10, " %s (line %3d):%n     overrider: %s %s (parameter %d type %s)%n   overridden: %s %s (parameter %d type %s)%n"

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 3457
    :cond_5
    if-nez p1, :cond_6

    .line 3458
    nop

    .line 3459
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    move-result-object v8

    .line 3460
    .local v8, "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v9, v9, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3463
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v10

    invoke-interface {v10}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v13, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v15, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    iget-object v10, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    iget-object v0, v8, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v17, v0

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 3461
    invoke-static {v4, v0}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 3460
    invoke-virtual {v9, v0, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3472
    .end local v8    # "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    :cond_6
    return-void
.end method

.method private checkPreAndPostConditions()V
    .locals 38

    .line 3160
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "methodref"

    goto :goto_0

    :cond_0
    const-string v1, "override"

    .line 3161
    .local v1, "msgKey":Ljava/lang/String;
    :goto_0
    iget-object v2, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3165
    return-void

    .line 3169
    :cond_1
    iget-object v2, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/framework/util/ContractsUtils;->getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;

    move-result-object v2

    .line 3170
    .local v2, "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    iget-object v3, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/util/ContractsUtils;->getPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v3

    .line 3171
    .local v3, "superPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/util/ContractsUtils;->getPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v4

    .line 3172
    .local v4, "subPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3173
    invoke-static {v5, v3, v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v5

    .line 3174
    .local v5, "superPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v6, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-static {v6, v4, v7}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v6

    .line 3176
    .local v6, "subPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contracts.postcondition."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ".invalid"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3177
    .local v16, "postmsg":Ljava/lang/String;
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v8, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v14, v16

    invoke-static/range {v7 .. v14}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 3187
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/checkerframework/framework/util/ContractsUtils;->getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v7

    .line 3188
    .local v7, "superPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    iget-object v8, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/checkerframework/framework/util/ContractsUtils;->getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v8

    .line 3189
    .local v8, "subPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3190
    invoke-static {v9, v7, v10}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v9

    .line 3191
    .local v9, "superPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v11, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-static {v10, v8, v11}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v10

    .line 3193
    .local v10, "subPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contracts.precondition."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3194
    .local v11, "premsg":Ljava/lang/String;
    iget-object v12, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v13, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    move-object/from16 v25, v3

    .end local v3    # "superPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    .local v25, "superPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v3, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    move-object/from16 v26, v4

    .end local v4    # "subPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    .local v26, "subPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    invoke-static/range {v17 .. v24}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 3204
    iget-object v3, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3205
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/util/ContractsUtils;->getConditionalPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v3

    .line 3206
    .local v3, "superCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3207
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/util/ContractsUtils;->getConditionalPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v4

    .line 3209
    .local v4, "subCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    iget-object v12, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    const/4 v13, 0x1

    invoke-static {v12, v3, v13}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v12

    .line 3210
    .local v12, "superCPostTrue":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v14, v4, v13}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v13

    .line 3211
    .local v13, "subCPostTrue":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-object/from16 v17, v2

    .end local v2    # "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    .local v17, "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    iget-object v2, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3212
    invoke-static {v14, v12, v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v2

    .line 3213
    .local v2, "superCPostTrue2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-object/from16 v18, v5

    .end local v5    # "superPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local v18, "superPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v5, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3214
    invoke-static {v14, v13, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v5

    .line 3216
    .local v5, "subCPostTrue2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    .end local v6    # "subPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local v19, "subPost2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    const-string v6, "contracts.conditional.postcondition.true."

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3217
    .local v6, "posttruemsg":Ljava/lang/String;
    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-object/from16 v20, v7

    .end local v7    # "superPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    .local v20, "superPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    move-object/from16 v21, v8

    .end local v8    # "subPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    .local v21, "subPre":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    iget-object v8, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    move-object/from16 v22, v9

    .end local v9    # "superPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local v22, "superPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    move-object/from16 v23, v10

    .end local v10    # "subPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local v23, "subPre2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object/from16 v27, v14

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v2

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    invoke-static/range {v27 .. v34}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 3227
    iget-object v7, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v7

    .line 3228
    .local v7, "superCPostFalse":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v9, v4, v8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v8

    .line 3229
    .local v8, "subCPostFalse":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    iget-object v9, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3230
    invoke-static {v9, v7, v10}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v9

    .line 3231
    .local v9, "superCPostFalse2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    iget-object v10, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3232
    invoke-static {v10, v8, v14}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/util/Set;

    move-result-object v10

    .line 3234
    .local v10, "subCPostFalse2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    .end local v2    # "superCPostTrue2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .local v24, "superCPostTrue2":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/javacutil/Pair<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    const-string v2, "contracts.conditional.postcondition.false."

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3236
    .local v2, "postfalsemsg":Ljava/lang/String;
    iget-object v14, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v15, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    move-object/from16 v35, v1

    .end local v1    # "msgKey":Ljava/lang/String;
    .local v35, "msgKey":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    move-object/from16 v36, v3

    .end local v3    # "superCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    .local v36, "superCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    iget-object v3, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    move-object/from16 v37, v4

    .end local v4    # "subCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    .local v37, "subCPost":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    iget-object v4, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v2

    invoke-static/range {v27 .. v34}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 3244
    return-void
.end method

.method private checkPurity()V
    .locals 10

    .line 3137
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "purity.invalid.methodref"

    goto :goto_0

    :cond_0
    const-string v0, "purity.invalid.overriding"

    .line 3140
    .local v0, "msgKey":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3142
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3143
    .local v1, "superPurity":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v3, v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3144
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/dataflow/util/PurityUtils;->getPurityKinds(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3145
    .local v2, "subPurity":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3146
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v9, v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    move-object v7, v2

    move-object v8, v1

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 3147
    invoke-static {v0, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3146
    invoke-virtual {v9, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3157
    :cond_1
    return-void
.end method

.method private checkReturn()Z
    .locals 5

    .line 3481
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 3483
    const/4 v0, 0x1

    return v0

    .line 3485
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v0, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v0

    .line 3486
    .local v0, "typeHierarchy":Lorg/checkerframework/framework/type/TypeHierarchy;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    .line 3487
    .local v1, "success":Z
    if-nez v1, :cond_1

    .line 3491
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->testTypevarContainment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    .line 3497
    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    .line 3498
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3499
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3500
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3501
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$1000(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v4, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v4

    .line 3500
    invoke-static {v2, v3, v4}, Lorg/checkerframework/javacutil/ElementUtils;->isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3502
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 3505
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 3503
    invoke-interface {v0, v2, v3}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    .line 3509
    :cond_2
    invoke-direct {p0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkReturnMsg(Z)V

    .line 3510
    return v1
.end method

.method private checkReturnMsg(Z)V
    .locals 12
    .param p1, "success"    # Z

    .line 3515
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "methodref.return.invalid"

    goto :goto_0

    :cond_0
    const-string v0, "override.return.invalid"

    .line 3517
    .local v0, "msgKey":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    instance-of v1, v1, Lcom/sun/source/tree/MethodTree;

    if-eqz v1, :cond_1

    .line 3518
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v1, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 3519
    invoke-static {v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$1100(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    check-cast v3, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v3}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 3518
    invoke-interface {v1, v2, v3}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v1

    goto :goto_1

    .line 3520
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v1, v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->positions:Lcom/sun/source/util/SourcePositions;

    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$1200(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    invoke-interface {v1, v2, v3}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v1

    :goto_1
    nop

    .line 3522
    .local v1, "valuePos":J
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    instance-of v4, v3, Lcom/sun/source/tree/MethodTree;

    if-eqz v4, :cond_2

    .line 3523
    check-cast v3, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v3}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    goto :goto_2

    .line 3524
    :cond_2
    nop

    :goto_2
    nop

    .line 3526
    .local v3, "posTree":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_3

    .line 3527
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3530
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v4, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "showchecks"

    invoke-virtual {v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3531
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    .line 3533
    if-eqz p1, :cond_4

    .line 3534
    const-string v6, "success: overriding return type is subtype of overridden"

    goto :goto_3

    .line 3535
    :cond_4
    const-string v6, "FAILURE: overriding return type is not subtype of overridden"

    :goto_3
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3536
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$1300(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v6

    invoke-interface {v6}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3537
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-static {v6}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$1400(Lorg/checkerframework/common/basetype/BaseTypeVisitor;)Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v6

    invoke-interface {v6}, Lcom/sun/source/tree/CompilationUnitTree;->getLineMap()Lcom/sun/source/tree/LineMap;

    move-result-object v6

    invoke-interface {v6, v1, v2}, Lcom/sun/source/tree/LineMap;->getLineNumber(J)J

    move-result-wide v6

    goto :goto_4

    .line 3538
    :cond_5
    const-wide/16 v6, -0x1

    .line 3536
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3541
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 3544
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 3531
    const-string v6, " %s (line %3d):%n     overrider: %s %s (return type %s)%n   overridden: %s %s (return type %s)%n"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 3546
    :cond_6
    if-nez p1, :cond_7

    .line 3547
    iget-object v4, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenReturnType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    move-result-object v4

    .line 3548
    .local v4, "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v5, v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    iget-object v10, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    iget-object v11, v4, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 3549
    invoke-static {v0, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 3548
    invoke-virtual {v5, v6, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3559
    .end local v4    # "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    :cond_7
    return-void
.end method


# virtual methods
.method public checkOverride()Z
    .locals 2

    .line 3118
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v0, v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    const/4 v0, 0x1

    return v0

    .line 3122
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkReturn()Z

    move-result v0

    .line 3123
    .local v0, "result":Z
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkParameters()Z

    move-result v1

    and-int/2addr v0, v1

    .line 3124
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->methodReference:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3125
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkMemberReferenceReceivers()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    .line 3127
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkReceiverOverride()Z

    move-result v1

    and-int/2addr v0, v1

    .line 3129
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkPreAndPostConditions()V

    .line 3130
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->checkPurity()V

    .line 3132
    return v0
.end method

.method protected checkReceiverOverride()Z
    .locals 14

    .line 3349
    .local p0, "this":Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<TFactory;>.OverrideChecker;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 3350
    .local v0, "overriderReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 3351
    .local v1, "overriddenReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v2, v2, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    .line 3357
    .local v2, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 3358
    .local v3, "overriderAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 3359
    .local v4, "overriddenAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v2, v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 3360
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v5, v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overridingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 3361
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v5

    .line 3362
    .local v5, "declaredAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v2, v3, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3363
    invoke-virtual {v2, v5, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3367
    return v6

    .line 3369
    :cond_0
    invoke-static {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    move-result-object v6

    .line 3370
    .local v6, "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    iget-object v7, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->this$0:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    iget-object v7, v7, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v8, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v10, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v11, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriddenTyp:Ljava/lang/String;

    iget-object v12, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    iget-object v13, v6, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v8

    .line 3371
    const-string v9, "override.receiver.invalid"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    iget-object v9, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 3370
    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 3380
    const/4 v7, 0x0

    return v7

    .line 3382
    .end local v5    # "declaredAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "pair":Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    :cond_1
    return v6
.end method
