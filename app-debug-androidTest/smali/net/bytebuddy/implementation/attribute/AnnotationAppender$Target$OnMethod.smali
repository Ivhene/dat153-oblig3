.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMethod"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "annotationTypeDescriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 178
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "annotationTypeDescriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "typeReference"    # I
    .param p4, "typePath"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/TypePath;->fromString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/TypePath;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method
