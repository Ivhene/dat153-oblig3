.class Lscenelib/annotations/util/AbstractClassVisitor$3;
.super Ljava/lang/Object;
.source "AbstractClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/util/AbstractClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/util/AbstractClassVisitor;


# direct methods
.method constructor <init>(Lscenelib/annotations/util/AbstractClassVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/util/AbstractClassVisitor;

    .line 108
    iput-object p1, p0, Lscenelib/annotations/util/AbstractClassVisitor$3;->this$0:Lscenelib/annotations/util/AbstractClassVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 162
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 164
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 112
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor$3$1;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/AbstractClassVisitor$3$1;-><init>(Lscenelib/annotations/util/AbstractClassVisitor$3;)V

    return-object v0
.end method
