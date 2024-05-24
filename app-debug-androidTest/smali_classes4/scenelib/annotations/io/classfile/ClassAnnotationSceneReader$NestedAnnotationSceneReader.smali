.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;
.super Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
.source "ClassAnnotationSceneReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NestedAnnotationSceneReader"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;


# direct methods
.method public constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "parent"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 1004
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    .line 1005
    iget-boolean v0, p2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->visible:Z

    iget-object v1, p2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->aElement:Lscenelib/annotations/el/AElement;

    invoke-direct {p0, p1, p4, v0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;Ljava/lang/String;ZLscenelib/annotations/el/AElement;)V

    .line 1007
    iput-object p2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;->parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    .line 1008
    iput-object p3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;->name:Ljava/lang/String;

    .line 1010
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 3

    .line 1017
    invoke-super {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->makeAnnotation()Lscenelib/annotations/Annotation;

    move-result-object v0

    .line 1018
    .local v0, "a":Lscenelib/annotations/Annotation;
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;->parent:Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$NestedAnnotationSceneReader;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader$AnnotationSceneReader;->supplySubannotation(Ljava/lang/String;Lscenelib/annotations/Annotation;)V

    .line 1019
    return-void
.end method
