.class public Lnet/bytebuddy/jar/asm/commons/FieldRemapper;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "FieldRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "fieldVisitor"    # Lnet/bytebuddy/jar/asm/FieldVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 67
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    .line 68
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 69
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "fieldVisitor"    # Lnet/bytebuddy/jar/asm/FieldVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 54
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 113
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 114
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method protected createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->api:I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 73
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 74
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 75
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 83
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 84
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 85
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 86
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1
.end method
