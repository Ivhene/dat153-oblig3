.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TypeVariableBoundList"
.end annotation


# instance fields
.field private final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

.field private final bound:[Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>([Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0
    .param p1, "bound"    # [Ljava/lang/reflect/Type;
    .param p2, "annotationReader"    # Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    .line 5923
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    .line 5924
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->bound:[Ljava/lang/reflect/Type;

    .line 5925
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    .line 5926
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 5905
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .param p1, "index"    # I

    .line 5932
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->bound:[Ljava/lang/reflect/Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->ofTypeVariableBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 5939
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;->bound:[Ljava/lang/reflect/Type;

    array-length v0, v0

    return v0
.end method