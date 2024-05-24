.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;
.super Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;
.source "TypeAnnotationConstantsCollector.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# instance fields
.field private xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V
    .locals 0
    .param p1, "xav"    # Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .param p2, "cp"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    .line 53
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    .line 54
    return-void
.end method


# virtual methods
.method public visitXBoundIndex(I)V
    .locals 1
    .param p1, "bound_index"    # I

    .line 93
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXBoundIndex(I)V

    .line 94
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 1
    .param p1, "exception_index"    # I

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXExceptionIndex(I)V

    .line 102
    return-void
.end method

.method public visitXIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXIndex(I)V

    .line 86
    return-void
.end method

.method public visitXLength(I)V
    .locals 1
    .param p1, "length"    # I

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLength(I)V

    .line 82
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 1
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V

    .line 70
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 1
    .param p1, "location_length"    # I

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocationLength(I)V

    .line 66
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNameAndArgsSize()V

    .line 106
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 1
    .param p1, "num_entries"    # I

    .line 73
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNumEntries(I)V

    .line 74
    return-void
.end method

.method public visitXOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXOffset(I)V

    .line 62
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 1
    .param p1, "param_index"    # I

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 90
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 1
    .param p1, "start_pc"    # I

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXStartPc(I)V

    .line 78
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 1
    .param p1, "target_type"    # I

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTargetType(I)V

    .line 58
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 1
    .param p1, "type_index"    # I

    .line 97
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/TypeAnnotationConstantsCollector;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTypeIndex(I)V

    .line 98
    return-void
.end method
