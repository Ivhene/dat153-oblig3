.class public Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;
.super Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.source "FieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/field/FieldList$AbstractBase<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;-><init>()V

    .line 111
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;->fields:Ljava/util/List;

    .line 112
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # [Ljava/lang/reflect/Field;

    .line 102
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>(Ljava/util/List;)V

    .line 103
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;->get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 2
    .param p1, "index"    # I

    .line 118
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;->fields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 125
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
