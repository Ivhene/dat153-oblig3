.class public Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;
.super Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.source "RecordComponentRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 69
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;)V

    .line 70
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 71
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 56
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 115
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 116
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method protected createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->api:I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 75
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 76
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 77
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 85
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 86
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 87
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/RecordComponentRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1
.end method
