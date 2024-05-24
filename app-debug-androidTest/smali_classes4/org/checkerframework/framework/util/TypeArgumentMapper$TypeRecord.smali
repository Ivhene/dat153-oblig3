.class Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;
.super Ljava/lang/Object;
.source "TypeArgumentMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/TypeArgumentMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeRecord"
.end annotation


# instance fields
.field public final element:Ljavax/lang/model/element/TypeElement;

.field public final type:Ljavax/lang/model/type/DeclaredType;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/type/DeclaredType;)V
    .locals 0
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "type"    # Ljavax/lang/model/type/DeclaredType;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->element:Ljavax/lang/model/element/TypeElement;

    .line 333
    iput-object p2, p0, Lorg/checkerframework/framework/util/TypeArgumentMapper$TypeRecord;->type:Ljavax/lang/model/type/DeclaredType;

    .line 334
    return-void
.end method
