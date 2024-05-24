.class Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;
.source "KeyForPropagator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/KeyForPropagator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyForPropagationMerger"
.end annotation


# instance fields
.field private final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field final synthetic this$0:Lorg/checkerframework/checker/nullness/KeyForPropagator;


# direct methods
.method private constructor <init>(Lorg/checkerframework/checker/nullness/KeyForPropagator;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 184
    iput-object p1, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->this$0:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;-><init>()V

    .line 185
    iput-object p2, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/checker/nullness/KeyForPropagator;Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/KeyForPropagator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/checker/nullness/KeyForPropagator;
    .param p2, "x1"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p3, "x2"    # Lorg/checkerframework/checker/nullness/KeyForPropagator$1;

    .line 181
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;-><init>(Lorg/checkerframework/checker/nullness/KeyForPropagator;Ljavax/annotation/processing/ProcessingEnvironment;)V

    return-void
.end method


# virtual methods
.method protected replaceAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "from"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "to"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->this$0:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    invoke-static {v0}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->access$100(Lorg/checkerframework/checker/nullness/KeyForPropagator;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 191
    .local v0, "fromKeyFor":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->this$0:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    invoke-static {v1}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->access$100(Lorg/checkerframework/checker/nullness/KeyForPropagator;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 193
    .local v1, "toKeyFor":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->this$0:Lorg/checkerframework/checker/nullness/KeyForPropagator;

    .line 194
    invoke-static {v2}, Lorg/checkerframework/checker/nullness/KeyForPropagator;->access$100(Lorg/checkerframework/checker/nullness/KeyForPropagator;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 195
    .local v2, "toNeedsAnnotation":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 196
    new-instance v3, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/KeyForPropagator$KeyForPropagationMerger;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 197
    .local v3, "annotationBuilder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 199
    .end local v3    # "annotationBuilder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_2
    return-void
.end method
