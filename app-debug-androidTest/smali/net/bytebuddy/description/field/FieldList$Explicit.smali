.class public Lnet/bytebuddy/description/field/FieldList$Explicit;
.super Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.source "FieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">",
        "Lnet/bytebuddy/description/field/FieldList$AbstractBase<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final fieldDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TS;>;"
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
            "+TS;>;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$Explicit;, "Lnet/bytebuddy/description/field/FieldList$Explicit<TS;>;"
    .local p1, "fieldDescriptions":Ljava/util/List;, "Ljava/util/List<+TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;-><init>()V

    .line 157
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldList$Explicit;->fieldDescriptions:Ljava/util/List;

    .line 158
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$Explicit;, "Lnet/bytebuddy/description/field/FieldList$Explicit<TS;>;"
    .local p1, "fieldDescription":[Lnet/bytebuddy/description/field/FieldDescription;, "[TS;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/field/FieldList$Explicit;-><init>(Ljava/util/List;)V

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 134
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$Explicit;, "Lnet/bytebuddy/description/field/FieldList$Explicit<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldList$Explicit;->get(I)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$Explicit;, "Lnet/bytebuddy/description/field/FieldList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldList$Explicit;->fieldDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 171
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$Explicit;, "Lnet/bytebuddy/description/field/FieldList$Explicit<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldList$Explicit;->fieldDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
