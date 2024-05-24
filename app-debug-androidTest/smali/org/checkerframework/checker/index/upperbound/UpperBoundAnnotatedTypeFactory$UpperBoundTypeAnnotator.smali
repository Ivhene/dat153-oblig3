.class Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "UpperBoundAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpperBoundTypeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;


# direct methods
.method private constructor <init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 246
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 247
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$1;

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;-><init>(Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 254
    const-class v0, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 255
    .local v0, "anm":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 256
    const-class v1, Ljava/lang/String;

    .line 257
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/String;

    .line 259
    const-string v4, "offset"

    invoke-static {v0, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 260
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 267
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory$UpperBoundTypeAnnotator;->this$0:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 270
    .end local v1    # "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method
