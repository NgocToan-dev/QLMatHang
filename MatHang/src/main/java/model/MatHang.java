package model;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MatHang {
    private Long id;
    private String code;
    private String name;
    private Byte[] image;
    private Double retailPrice;
    private Double importPrice;
    private Double wholesalePrice;
    private String description;
    private Category category;
    private Date createdDate;
    private String attribute;
}
