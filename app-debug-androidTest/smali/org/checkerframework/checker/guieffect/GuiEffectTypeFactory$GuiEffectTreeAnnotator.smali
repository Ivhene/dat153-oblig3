.class Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "GuiEffectTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuiEffectTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 643
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 644
    return-void
.end method


# virtual methods
.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 640
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 668
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 671
    .local v0, "methType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 682
    .local v1, "cls":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 683
    .local v2, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 685
    invoke-static {v3}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->access$000(Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object v3

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 686
    nop

    .line 687
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isPolymorphicType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    const-class v3, Lorg/checkerframework/checker/guieffect/qual/PolyUI;

    goto :goto_0

    .line 689
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;->this$0:Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    const-class v3, Lorg/checkerframework/checker/guieffect/qual/UI;

    goto :goto_0

    .line 691
    :cond_1
    const-class v3, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    .line 686
    :goto_0
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotation(Ljava/lang/Class;)V

    .line 693
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethod(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method
