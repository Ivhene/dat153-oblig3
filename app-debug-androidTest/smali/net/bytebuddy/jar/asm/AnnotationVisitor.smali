.class public abstract Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;)V
    .locals 3
    .param p1, "api"    # I
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
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

    .line 78
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

    .line 80
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 81
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 83
    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->api:I

    .line 84
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 85
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 153
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    .line 156
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
