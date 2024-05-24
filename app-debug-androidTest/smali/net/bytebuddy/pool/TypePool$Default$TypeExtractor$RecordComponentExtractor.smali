.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;
.super Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecordComponentExtractor"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final genericSignature:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final typeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "genericSignature"    # Ljava/lang/String;

    .line 8700
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 8701
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(I)V

    .line 8702
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->name:Ljava/lang/String;

    .line 8703
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->descriptor:Ljava/lang/String;

    .line 8704
    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->genericSignature:Ljava/lang/String;

    .line 8705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->typeAnnotationTokens:Ljava/util/Map;

    .line 8706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->annotationTokens:Ljava/util/List;

    .line 8707
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 8725
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->annotationTokens:Ljava/util/List;

    new-instance v3, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v4, v4, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v3, v4, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 8

    .line 8730
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->access$4300(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->descriptor:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->genericSignature:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->typeAnnotationTokens:Ljava/util/Map;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->annotationTokens:Ljava/util/List;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8735
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 6
    .param p1, "rawTypeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 8712
    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    .line 8713
    .local v0, "typeReference":Lnet/bytebuddy/jar/asm/TypeReference;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 8718
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type reference on record component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8715
    :pswitch_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->typeAnnotationTokens:Ljava/util/Map;

    invoke-direct {v1, p3, p2, v2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    .line 8716
    .local v1, "annotationRegistrant":Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    nop

    .line 8720
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v4, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v5, v5, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v4, v5, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
