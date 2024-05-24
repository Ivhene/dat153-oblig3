.class Lscenelib/annotations/util/AbstractClassVisitor$1;
.super Ljava/lang/Object;
.source "AbstractClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/util/AbstractClassVisitor;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
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

    .line 19
    iput-object p1, p0, Lscenelib/annotations/util/AbstractClassVisitor$1;->this$0:Lscenelib/annotations/util/AbstractClassVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    .line 34
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 0
    .param p1, "bound_index"    # I

    .line 54
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 0
    .param p1, "exception_index"    # I

    .line 58
    return-void
.end method

.method public visitXIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 50
    return-void
.end method

.method public visitXLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 48
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 0
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 42
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 0
    .param p1, "location_length"    # I

    .line 40
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 60
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 0
    .param p1, "num_entries"    # I

    .line 44
    return-void
.end method

.method public visitXOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 38
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 0
    .param p1, "param_index"    # I

    .line 52
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 0
    .param p1, "start_pc"    # I

    .line 46
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 0
    .param p1, "target_type"    # I

    .line 36
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 0
    .param p1, "type_index"    # I

    .line 56
    return-void
.end method
