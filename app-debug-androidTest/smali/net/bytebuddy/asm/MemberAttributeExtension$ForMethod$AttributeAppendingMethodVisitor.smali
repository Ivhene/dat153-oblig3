.class Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MemberAttributeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeAppendingMethodVisitor"
.end annotation


# instance fields
.field private final annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

.field private applicable:Z

.field private final methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .param p4, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 406
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 407
    iput-object p2, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 408
    iput-object p3, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    .line 409
    iput-object p4, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->applicable:Z

    .line 411
    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/asm/MemberAttributeExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "x1"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "x2"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .param p4, "x3"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p5, "x4"    # Lnet/bytebuddy/asm/MemberAttributeExtension$1;

    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method


# virtual methods
.method public visitCode()V
    .locals 4

    .line 415
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->applicable:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->applicable:Z

    .line 419
    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 420
    return-void
.end method

.method public visitEnd()V
    .locals 4

    .line 424
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->applicable:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;->applicable:Z

    .line 428
    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 429
    return-void
.end method
