.class Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "MemberAttributeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldAttributeVisitor"
.end annotation


# instance fields
.field private final annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

.field private final fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 1
    .param p1, "fieldVisitor"    # Lnet/bytebuddy/jar/asm/FieldVisitor;
    .param p2, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;
    .param p3, "fieldAttributeAppender"    # Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .param p4, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 202
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    .line 203
    iput-object p2, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 204
    iput-object p3, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    .line 205
    iput-object p4, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/asm/MemberAttributeExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/bytebuddy/jar/asm/FieldVisitor;
    .param p2, "x1"    # Lnet/bytebuddy/description/field/FieldDescription;
    .param p3, "x2"    # Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .param p4, "x3"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p5, "x4"    # Lnet/bytebuddy/asm/MemberAttributeExtension$1;

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;-><init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 4

    .line 210
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->fieldAttributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 211
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    .line 212
    return-void
.end method
