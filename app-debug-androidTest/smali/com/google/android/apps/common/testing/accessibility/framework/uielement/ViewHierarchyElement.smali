.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
.super Ljava/lang/Object;
.source "ViewHierarchyElement.java"


# instance fields
.field protected final accessibilityClassName:Ljava/lang/CharSequence;

.field protected accessibilityTraversalAfterId:Ljava/lang/Long;

.field protected accessibilityTraversalBeforeId:Ljava/lang/Long;

.field protected final actionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final backgroundDrawableColor:Ljava/lang/Integer;

.field protected final boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

.field protected final canScrollBackward:Ljava/lang/Boolean;

.field protected final canScrollForward:Ljava/lang/Boolean;

.field protected final checkable:Ljava/lang/Boolean;

.field protected final checked:Ljava/lang/Boolean;

.field protected childIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final className:Ljava/lang/CharSequence;

.field protected final clickable:Z

.field protected final contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field protected final drawingOrder:Ljava/lang/Integer;

.field protected final editable:Ljava/lang/Boolean;

.field protected final enabled:Z

.field protected final focusable:Z

.field protected final hasTouchDelegate:Ljava/lang/Boolean;

.field protected final hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field protected final hintTextColor:Ljava/lang/Integer;

.field protected final id:I

.field protected final importantForAccessibility:Z

.field protected labeledById:Ljava/lang/Long;

.field protected final layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

.field protected final longClickable:Z

.field protected final nonclippedHeight:Ljava/lang/Integer;

.field protected final nonclippedWidth:Ljava/lang/Integer;

.field protected final packageName:Ljava/lang/CharSequence;

.field protected final parentId:Ljava/lang/Integer;

.field protected final resourceName:Ljava/lang/String;

.field protected final scrollable:Ljava/lang/Boolean;

.field protected final superclassViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

.field protected final textCharacterLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected final textColor:Ljava/lang/Integer;

.field protected final textSize:Ljava/lang/Float;

.field protected touchDelegateBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected final typefaceStyle:Ljava/lang/Integer;

.field protected final visibleToUser:Ljava/lang/Boolean;

.field private windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;


# direct methods
.method protected constructor <init>(ILjava/lang/Integer;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;ZLjava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "parentId"    # Ljava/lang/Integer;
    .param p4, "packageName"    # Ljava/lang/CharSequence;
    .param p5, "className"    # Ljava/lang/CharSequence;
    .param p6, "accessibilityClassName"    # Ljava/lang/CharSequence;
    .param p7, "resourceName"    # Ljava/lang/String;
    .param p8, "contentDescription"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p9, "text"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p10, "importantForAccessibility"    # Z
    .param p11, "visibleToUser"    # Ljava/lang/Boolean;
    .param p12, "clickable"    # Z
    .param p13, "longClickable"    # Z
    .param p14, "focusable"    # Z
    .param p15, "editable"    # Ljava/lang/Boolean;
    .param p16, "scrollable"    # Ljava/lang/Boolean;
    .param p17, "canScrollForward"    # Ljava/lang/Boolean;
    .param p18, "canScrollBackward"    # Ljava/lang/Boolean;
    .param p19, "checkable"    # Ljava/lang/Boolean;
    .param p20, "checked"    # Ljava/lang/Boolean;
    .param p21, "hasTouchDelegate"    # Ljava/lang/Boolean;
    .param p23, "boundsInScreen"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p24, "nonclippedHeight"    # Ljava/lang/Integer;
    .param p25, "nonclippedWidth"    # Ljava/lang/Integer;
    .param p26, "textSize"    # Ljava/lang/Float;
    .param p27, "textColor"    # Ljava/lang/Integer;
    .param p28, "backgroundDrawableColor"    # Ljava/lang/Integer;
    .param p29, "typefaceStyle"    # Ljava/lang/Integer;
    .param p30, "enabled"    # Z
    .param p31, "labeledById"    # Ljava/lang/Long;
    .param p32, "accessibilityTraversalBeforeId"    # Ljava/lang/Long;
    .param p33, "accessibilityTraversalAfterId"    # Ljava/lang/Long;
    .param p34, "drawingOrder"    # Ljava/lang/Integer;
    .param p37, "layoutParams"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    .param p38, "hintText"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p39, "hintTextColor"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Z",
            "Ljava/lang/Boolean;",
            "ZZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p3, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p22, "touchDelegateBounds":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    .local p35, "superclassViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p36, "actionList":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;>;"
    .local p40, "textCharacterLocations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->id:I

    .line 141
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 142
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    .line 144
    move-object/from16 v4, p3

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 142
    :cond_0
    move-object/from16 v4, p3

    .line 146
    :goto_0
    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->packageName:Ljava/lang/CharSequence;

    .line 147
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->className:Ljava/lang/CharSequence;

    .line 148
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 149
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->resourceName:Ljava/lang/String;

    .line 150
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 151
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 152
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->importantForAccessibility:Z

    .line 153
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->visibleToUser:Ljava/lang/Boolean;

    .line 154
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->clickable:Z

    .line 155
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->longClickable:Z

    .line 156
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->focusable:Z

    .line 157
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->editable:Ljava/lang/Boolean;

    .line 158
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->scrollable:Ljava/lang/Boolean;

    .line 159
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward:Ljava/lang/Boolean;

    .line 160
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward:Ljava/lang/Boolean;

    .line 161
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkable:Ljava/lang/Boolean;

    .line 162
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checked:Ljava/lang/Boolean;

    .line 163
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 164
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    .line 165
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 166
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedHeight:Ljava/lang/Integer;

    .line 167
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedWidth:Ljava/lang/Integer;

    .line 168
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textSize:Ljava/lang/Float;

    .line 169
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textColor:Ljava/lang/Integer;

    .line 170
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 171
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->typefaceStyle:Ljava/lang/Integer;

    .line 172
    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->enabled:Z

    .line 173
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->labeledById:Ljava/lang/Long;

    .line 174
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 175
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 176
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->drawingOrder:Ljava/lang/Integer;

    .line 177
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    .line 178
    if-eqz p36, :cond_1

    invoke-interface/range {p36 .. p36}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    .line 179
    invoke-static/range {p36 .. p36}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->actionList:Lcom/google/common/collect/ImmutableList;

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 183
    :goto_1
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 184
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 185
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintTextColor:Ljava/lang/Integer;

    .line 186
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textCharacterLocations:Ljava/util/List;

    .line 187
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 5
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->id:I

    .line 194
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getParentId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getParentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 195
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    .line 197
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->packageName:Ljava/lang/CharSequence;

    .line 201
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->className:Ljava/lang/CharSequence;

    .line 202
    nop

    .line 203
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityClassName:Ljava/lang/CharSequence;

    .line 204
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasResourceName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getResourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->resourceName:Ljava/lang/String;

    .line 205
    nop

    .line 206
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasContentDescription()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_5

    :cond_6
    move-object v0, v2

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 207
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasText()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 208
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getImportantForAccessibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->importantForAccessibility:Z

    .line 209
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getVisibleToUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->visibleToUser:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->clickable:Z

    .line 211
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->longClickable:Z

    .line 212
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getFocusable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->focusable:Z

    .line 213
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEditable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getEditable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v2

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->editable:Ljava/lang/Boolean;

    .line 214
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasScrollable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getScrollable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object v0, v2

    :goto_9
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->scrollable:Ljava/lang/Boolean;

    .line 215
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCanScrollForward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object v0, v2

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCanScrollBackward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    :cond_c
    move-object v0, v2

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward:Ljava/lang/Boolean;

    .line 217
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCheckable()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getCheckable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_d
    move-object v0, v2

    :goto_c
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkable:Ljava/lang/Boolean;

    .line 218
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_e
    move-object v0, v2

    :goto_d
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checked:Ljava/lang/Boolean;

    .line 219
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHasTouchDelegate()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHasTouchDelegate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_f
    move-object v0, v2

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate:Ljava/lang/Boolean;

    .line 220
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBoundsCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 221
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 222
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBoundsCount()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 223
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTouchDelegateBounds(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 225
    .end local v1    # "i":I
    :cond_10
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    .line 226
    .end local v0    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    goto :goto_10

    .line 227
    :cond_11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    .line 229
    :goto_10
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBoundsInScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    goto :goto_11

    :cond_12
    move-object v0, v2

    :goto_11
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 230
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedHeight()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getNonclippedHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :cond_13
    move-object v0, v2

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedHeight:Ljava/lang/Integer;

    .line 231
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedWidth()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getNonclippedWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    :cond_14
    move-object v0, v2

    :goto_13
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedWidth:Ljava/lang/Integer;

    .line 232
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextSize()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_14

    :cond_15
    move-object v0, v2

    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textSize:Ljava/lang/Float;

    .line 233
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextColor()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_16
    move-object v0, v2

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textColor:Ljava/lang/Integer;

    .line 234
    nop

    .line 235
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBackgroundDrawableColor()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBackgroundDrawableColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_17
    move-object v0, v2

    :goto_16
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->backgroundDrawableColor:Ljava/lang/Integer;

    .line 236
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTypefaceStyle()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTypefaceStyle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :cond_18
    move-object v0, v2

    :goto_17
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->typefaceStyle:Ljava/lang/Integer;

    .line 237
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->enabled:Z

    .line 238
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLabeledById()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLabeledById()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_18

    :cond_19
    move-object v0, v2

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->labeledById:Ljava/lang/Long;

    .line 239
    nop

    .line 240
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalBeforeId()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 241
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityTraversalBeforeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    .line 242
    :cond_1a
    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 243
    nop

    .line 244
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalAfterId()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityTraversalAfterId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1a

    :cond_1b
    move-object v0, v2

    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 245
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getSuperclassesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    .line 246
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasDrawingOrder()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDrawingOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    :cond_1c
    move-object v0, v2

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->drawingOrder:Ljava/lang/Integer;

    .line 247
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 248
    .local v0, "actionBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getActionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 249
    .local v3, "actionProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;

    invoke-direct {v4, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 250
    .end local v3    # "actionProto":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    goto :goto_1c

    .line 251
    :cond_1d
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->actionList:Lcom/google/common/collect/ImmutableList;

    .line 252
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLayoutParams()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V

    goto :goto_1d

    :cond_1e
    move-object v1, v2

    :goto_1d
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 253
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintText()Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    goto :goto_1e

    :cond_1f
    move-object v1, v2

    :goto_1e
    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    .line 254
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintTextColor()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_20
    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintTextColor:Ljava/lang/Integer;

    .line 255
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 256
    .local v1, "characterLocations":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocationsCount()I

    move-result v2

    if-lez v2, :cond_21

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocationsCount()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 258
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getTextCharacterLocations(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 261
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textCharacterLocations:Ljava/util/List;

    .line 262
    return-void
.end method

.method private static condensedUniqueIdEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 6
    .param p0, "ve1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .param p1, "ve2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 1022
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 1023
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1024
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1022
    :goto_0
    return v0
.end method

.method private getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .line 976
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getViewById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isAgaistScrollableEdgeOfAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 6
    .param p1, "view"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 732
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    .line 733
    .local v0, "ancestor":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    if-nez v0, :cond_0

    .line 734
    const/4 v1, 0x0

    return v1

    .line 739
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 740
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    .line 741
    .local v1, "scrollableBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v3

    .line 743
    .local v3, "descendantBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 744
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 745
    :cond_1
    return v2

    .line 751
    .end local v1    # "scrollableBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v3    # "descendantBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    .line 753
    .restart local v1    # "scrollableBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v3

    .line 755
    .restart local v3    # "descendantBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 756
    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 757
    :cond_3
    return v2

    .line 762
    .end local v1    # "scrollableBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .end local v3    # "descendantBounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isAgaistScrollableEdgeOfAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v1

    return v1
.end method

.method private propertiesEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z
    .locals 4
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 980
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isImportantForAccessibility()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBackgroundDrawableColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBackgroundDrawableColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isClickable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isLongClickable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isFocusable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isFocusable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEditable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEditable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isScrollable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isScrollable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isCheckable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isCheckable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isChecked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isChecked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTouchDelegateBounds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTouchDelegateBounds()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getNonclippedHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextSize()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTextSize()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTypefaceStyle()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getTypefaceStyle()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->condensedUniqueIdEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 1010
    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->condensedUniqueIdEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    .line 1012
    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->condensedUniqueIdEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getDrawingOrder()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getDrawingOrder()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintTextColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getHintTextColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 980
    :goto_0
    return v0
.end method


# virtual methods
.method addChild(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)V
    .locals 2
    .param p1, "child"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    return-void
.end method

.method addIdToSuperclassViewList(I)V
    .locals 2
    .param p1, "id"    # I

    .line 801
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    return-void
.end method

.method public canScrollBackward()Ljava/lang/Boolean;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public canScrollForward()Ljava/lang/Boolean;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public checkInstanceOf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "referenceClassName"    # Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getAccessibilityHierarchy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;

    move-result-object v0

    .line 380
    .local v0, "hierarchy":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy;->getViewElementClassNames()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/AccessibilityHierarchy$ViewElementClassNames;->getIdentifierForClassName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 381
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 382
    const/4 v2, 0x0

    return v2

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public checkInstanceOfAny(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 396
    .local p1, "referenceClassNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, "referenceClassName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkInstanceOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    .end local v1    # "referenceClassName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 772
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 773
    return v0

    .line 775
    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 776
    return v2

    .line 779
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 780
    .local v1, "element":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    move-object v3, p1

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    invoke-direct {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->propertiesEquals(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 781
    return v2

    .line 783
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 784
    invoke-virtual {p0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 785
    return v2

    .line 783
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAccessibilityTraversalAfter()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalAfterId:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityTraversalBefore()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0
.end method

.method getActionList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->actionList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getBackgroundDrawableColor()Ljava/lang/Integer;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->backgroundDrawableColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->EMPTY:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    :goto_0
    return-object v0
.end method

.method public getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 2
    .param p1, "atIndex"    # I

    .line 311
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getChildViewCount()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->className:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCondensedUniqueId()J
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getId()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getId()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    return-object v0
.end method

.method public getDrawingOrder()Ljava/lang/Integer;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->drawingOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    return-object v0
.end method

.method public getHintTextColor()Ljava/lang/Integer;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->id:I

    return v0
.end method

.method public getLabeledBy()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->labeledById:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getViewHierarchyElementById(Ljava/lang/Long;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    return-object v0
.end method

.method public getNonclippedHeight()Ljava/lang/Integer;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNonclippedWidth()Ljava/lang/Integer;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->packageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParentView()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->parentId:Ljava/lang/Integer;

    .line 290
    .local v0, "parentIdtmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->getViewById(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAndAllDescendants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "listToPopulate":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildViewCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 325
    invoke-virtual {p0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getChildView(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getSelfAndAllDescendants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getSuperclassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    return-object v0
.end method

.method public getText()Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    return-object v0
.end method

.method public getTextCharacterLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textCharacterLocations:Ljava/util/List;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/Integer;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTextSize()Ljava/lang/Float;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getTouchDelegateBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    return-object v0
.end method

.method public getTypefaceStyle()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->typefaceStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWindow()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    return-object v0
.end method

.method public hasTouchDelegate()Ljava/lang/Boolean;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getId()I

    move-result v0

    return v0
.end method

.method public isAgainstScrollableEdge()Z
    .locals 2

    .line 728
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isVisibleToUser()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->isAgaistScrollableEdgeOfAncestor(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckable()Ljava/lang/Boolean;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isChecked()Ljava/lang/Boolean;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->clickable:Z

    return v0
.end method

.method public isEditable()Ljava/lang/Boolean;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->editable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->enabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->focusable:Z

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->importantForAccessibility:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->longClickable:Z

    return v0
.end method

.method public isScrollable()Ljava/lang/Boolean;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->scrollable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisibleToUser()Ljava/lang/Boolean;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->visibleToUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method setAccessibilityTraversalAfter(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)V
    .locals 2
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 960
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalAfterId:Ljava/lang/Long;

    .line 961
    return-void
.end method

.method setAccessibilityTraversalBefore(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)V
    .locals 2
    .param p1, "element"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 952
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    .line 953
    return-void
.end method

.method setLabeledBy(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;)V
    .locals 2
    .param p1, "labelingElement"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 944
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->getCondensedUniqueId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->labeledById:Ljava/lang/Long;

    .line 945
    return-void
.end method

.method setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)V
    .locals 0
    .param p1, "window"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 924
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->windowElement:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 925
    return-void
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 4

    .line 810
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    move-result-object v0

    .line 812
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->id:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 813
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->parentId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setParentId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->childIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->addAllChildIds(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 821
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->packageName:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setPackageName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->className:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 825
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->className:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->resourceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 828
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setResourceName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 830
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 831
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->contentDescription:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 833
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 834
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->text:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 836
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->importantForAccessibility:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setImportantForAccessibility(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 837
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->visibleToUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 838
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setVisibleToUser(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 840
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->clickable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setClickable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->longClickable:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setLongClickable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->focusable:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setFocusable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 841
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->editable:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 842
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setEditable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 844
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->scrollable:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 845
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setScrollable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 847
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollForward:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 848
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setCanScrollForward(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 850
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->canScrollBackward:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 851
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setCanScrollBackward(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 853
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checkable:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 854
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setCheckable(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 856
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->checked:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 857
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setChecked(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 859
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hasTouchDelegate:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 860
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setHasTouchDelegate(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 862
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->touchDelegateBounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 863
    .local v2, "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 864
    .end local v2    # "bounds":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    goto :goto_0

    .line 865
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->boundsInScreen:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    if-eqz v1, :cond_10

    .line 866
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 868
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 869
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setNonclippedHeight(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 871
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->nonclippedWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    .line 872
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setNonclippedWidth(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 874
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textSize:Ljava/lang/Float;

    if-eqz v1, :cond_13

    .line 875
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setTextSize(F)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 877
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textColor:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 878
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setTextColor(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 880
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->backgroundDrawableColor:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 881
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setBackgroundDrawableColor(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 883
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->typefaceStyle:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 884
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setTypefaceStyle(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 886
    :cond_16
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setEnabled(Z)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 887
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->labeledById:Ljava/lang/Long;

    if-eqz v1, :cond_17

    .line 888
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setLabeledById(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 890
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityClassName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_18

    .line 891
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setAccessibilityClassName(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 893
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalBeforeId:Ljava/lang/Long;

    if-eqz v1, :cond_19

    .line 894
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setAccessibilityTraversalBeforeId(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 896
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->accessibilityTraversalAfterId:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    .line 897
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setAccessibilityTraversalAfterId(J)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 899
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->drawingOrder:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    .line 900
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setDrawingOrder(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 902
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->layoutParams:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    if-eqz v1, :cond_1c

    .line 903
    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 905
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 906
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintText:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-virtual {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 908
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->hintTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 909
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->setHintTextColor(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 912
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->superclassViews:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->addAllSuperclasses(Ljava/lang/Iterable;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 913
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->actionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;

    .line 914
    .local v2, "action":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->addActions(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 915
    .end local v2    # "action":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
    goto :goto_1

    .line 916
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->textCharacterLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 917
    .local v2, "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->addTextCharacterLocations(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    .line 918
    .end local v2    # "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    goto :goto_2

    .line 919
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v1
.end method
