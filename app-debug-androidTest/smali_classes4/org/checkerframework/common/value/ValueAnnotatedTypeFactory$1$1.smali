.class Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;
.super Lorg/checkerframework/framework/type/StructuralEqualityComparer;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->createEqualityComparer()Lorg/checkerframework/framework/type/StructuralEqualityComparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;
    .param p2, "typeargVisitHistory"    # Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    .line 281
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;-><init>(Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;)V

    return-void
.end method


# virtual methods
.method protected arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 285
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 287
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 288
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 290
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 288
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 291
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 292
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 291
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 293
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;->this$1:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 294
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 293
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 296
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method
