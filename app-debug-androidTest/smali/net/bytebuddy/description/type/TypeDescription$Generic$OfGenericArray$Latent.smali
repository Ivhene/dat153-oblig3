.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

.field private final componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V
    .locals 0
    .param p1, "componentType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p2, "annotationSource"    # Lnet/bytebuddy/description/annotation/AnnotationSource;

    .line 4348
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;-><init>()V

    .line 4349
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 4350
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;->annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

    .line 4351
    return-void
.end method


# virtual methods
.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 4330
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 4357
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 4364
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;->annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method
