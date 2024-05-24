.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;
.super Ljava/lang/Object;
.source "ClassAnnotationSceneWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldAnnotationSceneWriter"
.end annotation


# instance fields
.field private final aField:Lscenelib/annotations/el/AElement;

.field private final existingFieldAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;


# direct methods
.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fv"    # Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 485
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    .line 488
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lscenelib/annotations/el/AClass;

    move-result-object p1

    iget-object p1, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p1, p2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscenelib/annotations/el/AElement;

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    .line 489
    return-void
.end method

.method private ensureVisitSceneFieldAnnotations()V
    .locals 8

    .line 540
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    iget-object v0, v0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 541
    .local v1, "tla":Lscenelib/annotations/Annotation;
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    goto :goto_0

    .line 544
    :cond_0
    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v2

    .line 545
    .local v2, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v3, v2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 546
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 547
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    iget-object v0, v0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 551
    .restart local v1    # "tla":Lscenelib/annotations/Annotation;
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    goto :goto_1

    .line 554
    :cond_2
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v2

    .line 555
    .local v2, "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v4, Lcom/sun/tools/javac/code/TargetType;->FIELD:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v3, v2, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 556
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v4, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v3, v2, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 557
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v3, v2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 558
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 559
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 563
    :cond_3
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    iget-object v0, v0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 565
    .local v1, "fieldInnerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    iget-object v3, v3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/Annotation;

    .line 566
    .local v4, "tla":Lscenelib/annotations/Annotation;
    iget-object v5, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    invoke-static {v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 567
    goto :goto_3

    .line 569
    :cond_4
    iget-object v5, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 570
    invoke-static {v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v7

    invoke-interface {v5, v6, v7, v2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v5

    .line 571
    .local v5, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v6, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->FIELD:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v6, v5, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 572
    iget-object v6, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v6, v5, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 573
    iget-object v6, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v6, v5, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 574
    invoke-interface {v5}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 575
    .end local v4    # "tla":Lscenelib/annotations/Annotation;
    .end local v5    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 576
    .end local v1    # "fieldInnerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    :cond_5
    goto :goto_2

    .line 577
    :cond_6
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 493
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AElement;->lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 498
    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 501
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 520
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 521
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 531
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->ensureVisitSceneFieldAnnotations()V

    .line 532
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 533
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 506
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->existingFieldAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->aField:Lscenelib/annotations/el/AElement;

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AElement;->lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 511
    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 514
    :cond_0
    new-instance v0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;

    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$FieldAnnotationSceneWriter;->fv:Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    .line 515
    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;)V

    .line 514
    return-object v0
.end method
