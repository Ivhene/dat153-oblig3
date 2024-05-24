.class Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "SignednessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignednessTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 194
    iput-object p1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->this$0:Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    .line 195
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 196
    return-void
.end method

.method private annotateBooleanAsUnknownSignedness(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 203
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->this$0:Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 206
    nop

    .line 210
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 214
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->this$0:Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 219
    .local v0, "lht":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 220
    nop

    .line 224
    .end local v0    # "lht":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->annotateBooleanAsUnknownSignedness(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 225
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 230
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;->annotateBooleanAsUnknownSignedness(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method
