.class Lscenelib/annotations/util/AbstractClassVisitor$4$3;
.super Ljava/lang/Object;
.source "AbstractClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/util/AbstractClassVisitor$4;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lscenelib/annotations/util/AbstractClassVisitor$4;


# direct methods
.method constructor <init>(Lscenelib/annotations/util/AbstractClassVisitor$4;)V
    .locals 0
    .param p1, "this$1"    # Lscenelib/annotations/util/AbstractClassVisitor$4;

    .line 247
    iput-object p1, p0, Lscenelib/annotations/util/AbstractClassVisitor$4$3;->this$1:Lscenelib/annotations/util/AbstractClassVisitor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    .line 262
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 251
    return-void
.end method
