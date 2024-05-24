.class Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field propagationTreeAnnotator:Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;

.field final synthetic this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p1, "this$0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1076
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1077
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;->propagationTreeAnnotator:Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;

    return-void
.end method


# virtual methods
.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1076
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "mirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1082
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;->propagationTreeAnnotator:Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
