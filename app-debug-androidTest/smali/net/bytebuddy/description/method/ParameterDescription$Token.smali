.class public Lnet/bytebuddy/description/method/ParameterDescription$Token;
.super Ljava/lang/Object;
.source "ParameterDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_MODIFIERS:Ljava/lang/Integer;

.field public static final NO_NAME:Ljava/lang/String;


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final modifiers:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 976
    nop

    .line 971
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    .line 976
    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1
    .param p1, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 1006
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/Integer;

    .line 1026
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 1015
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "modifiers"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1040
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1042
    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    .line 1043
    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    .line 1044
    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    .line 1045
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 966
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/ParameterDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/ParameterDescription$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;"
        }
    .end annotation

    .line 1087
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1106
    return v0

    .line 1107
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1108
    return v2

    .line 1110
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 1111
    .local v1, "token":Lnet/bytebuddy/description/method/ParameterDescription$Token;
    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v4, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    iget-object v4, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    .line 1112
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    .line 1113
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    .line 1114
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-nez v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1111
    :goto_2
    return v0
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1062
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()Ljava/lang/Integer;
    .locals 1

    .line 1080
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1071
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 1053
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 1096
    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->hashCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/method/ParameterDescription$Token;
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 1097
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 1098
    .end local v2    # "result":I
    .local v3, "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    add-int/2addr v2, v4

    .line 1099
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v1, v3

    .line 1100
    .end local v2    # "result":I
    .local v1, "result":I
    nop

    .end local v0    # "this":Lnet/bytebuddy/description/method/ParameterDescription$Token;
    .end local v1    # "result":I
    :goto_1
    if-nez v1, :cond_3

    iget v1, v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->hashCode:I

    goto :goto_2

    :cond_3
    iput v1, v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->hashCode:I

    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParameterDescription.Token{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Token;->modifiers:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
