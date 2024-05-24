.class public Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "AnnotationRemapper.java"


# instance fields
.field protected final descriptor:Ljava/lang/String;

.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p4, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 110
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    .line 111
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->descriptor:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 113
    return-void
.end method

.method protected constructor <init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 74
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 61
    return-void
.end method

.method private mapAnnotationAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->descriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    return-object p1

    .line 212
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapAnnotationAttributeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 173
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 174
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method protected createAnnotationRemapper(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4
    .param p1, "annotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILjava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method final orDeprecatedValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "deprecatedAnnotationVisitor"    # Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    .line 192
    .local v0, "deprecatedAnnotationRemapper":Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;
    iget v1, v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    if-ne v1, v2, :cond_0

    .line 195
    return-object p0

    .line 198
    .end local v0    # "deprecatedAnnotationRemapper":Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;
    :cond_0
    return-object p1
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->mapAnnotationAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 127
    nop

    .line 128
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->mapAnnotationAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 129
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne v0, v1, :cond_1

    .line 133
    move-object v1, p0

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0, p2, v0}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 132
    :goto_0
    return-object v1
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->mapAnnotationAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 141
    .local v0, "annotationVisitor":Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    return-object v1

    .line 144
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne v0, v2, :cond_1

    .line 145
    move-object v1, p0

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->createAnnotationRemapper(Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->mapAnnotationAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
