.class Lscenelib/annotations/util/AbstractClassVisitor$4$1;
.super Ljava/lang/Object;
.source "AbstractClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/util/AbstractClassVisitor$4;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
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

    .line 175
    iput-object p1, p0, Lscenelib/annotations/util/AbstractClassVisitor$4$1;->this$1:Lscenelib/annotations/util/AbstractClassVisitor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    .line 190
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 179
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 0
    .param p1, "bound_index"    # I

    .line 210
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 0
    .param p1, "exception_index"    # I

    .line 214
    return-void
.end method

.method public visitXIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 206
    return-void
.end method

.method public visitXLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 204
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 0
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 198
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 0
    .param p1, "location_length"    # I

    .line 196
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 216
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 0
    .param p1, "num_entries"    # I

    .line 200
    return-void
.end method

.method public visitXOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 194
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 0
    .param p1, "param_index"    # I

    .line 208
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 0
    .param p1, "start_pc"    # I

    .line 202
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 0
    .param p1, "target_type"    # I

    .line 192
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 0
    .param p1, "type_index"    # I

    .line 212
    return-void
.end method
