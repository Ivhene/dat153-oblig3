.class public Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;
.source "GuiEffectVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GuiEffectOverrideChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;",
        ">.OverrideChecker;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;
    .param p2, "overriderTree"    # Lcom/sun/source/tree/Tree;
    .param p3, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p4, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "overridingReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p6, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p7, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p8, "overriddenReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 149
    iput-object p1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    .line 150
    invoke-direct/range {p0 .. p8}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;-><init>(Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected checkReceiverOverride()Z
    .locals 12

    .line 99
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 100
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 101
    .local v0, "overriddenReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 102
    iget-object v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    invoke-static {v2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->access$000(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 103
    invoke-virtual {v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 104
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 108
    iget-object v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriddenType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 109
    .local v2, "safeParent":Z
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    .line 110
    invoke-static {v4}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->access$100(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriddenType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 111
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/PolyUIType;

    .line 110
    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 122
    .local v4, "polyParentDecl":Z
    :goto_1
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 123
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    .line 124
    .local v5, "safeReceiverOverride":Z
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 125
    return v3

    .line 127
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    invoke-static {v3}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->access$200(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v3

    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriderMeth:Ljava/lang/String;

    iget-object v7, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriderTyp:Ljava/lang/String;

    iget-object v8, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriddenMeth:Ljava/lang/String;

    iget-object v9, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriddenTyp:Ljava/lang/String;

    iget-object v10, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overrider:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 134
    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v10

    iget-object v11, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overridden:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 135
    invoke-virtual {v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 128
    const-string v7, "override.receiver.invalid"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;->overriderTree:Lcom/sun/source/tree/Tree;

    .line 127
    invoke-virtual {v3, v6, v7}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 137
    return v1

    .line 139
    .end local v2    # "safeParent":Z
    .end local v4    # "polyParentDecl":Z
    .end local v5    # "safeReceiverOverride":Z
    :cond_4
    return v3
.end method
