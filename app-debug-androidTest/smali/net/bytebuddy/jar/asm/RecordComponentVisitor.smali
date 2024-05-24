.class public abstract Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.super Ljava/lang/Object;
.source "RecordComponentVisitor.java"


# instance fields
.field protected final api:I

.field delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;)V
    .locals 3
    .param p1, "api"    # I
    .param p2, "recordComponentVisitor"    # Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported api "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 79
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 81
    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->api:I

    .line 82
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    .line 83
    return-void
.end method


# virtual methods
.method public getDelegate()Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1

    .line 91
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 103
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 138
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 141
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 148
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitEnd()V

    .line 151
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 126
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
