.class public Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;
.super Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransformedField"
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final token:Lnet/bytebuddy/description/field/FieldDescription$Token;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/field/FieldDescription$Token;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)V
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "declaringType"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p3, "token"    # Lnet/bytebuddy/description/field/FieldDescription$Token;
    .param p4, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 199
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;-><init>()V

    .line 200
    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 201
    iput-object p2, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 202
    iput-object p3, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    .line 203
    iput-object p4, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 204
    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 1

    .line 238
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 217
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 224
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->declaringType:Lnet/bytebuddy/description/type/TypeDefinition;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 231
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 210
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$TransformedField;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
